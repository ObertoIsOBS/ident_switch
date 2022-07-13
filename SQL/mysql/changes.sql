--
-- Update 2016060200
--

ALTER TABLE `ident_switch`
  MODIFY `username` varchar(64);

--
-- Update 2018071600
--

ALTER TABLE `ident_switch`
  MODIFY `username` varchar(64) NULL;

--
-- Update 2018121800
--

ALTER TABLE `ident_switch`
  CHANGE `host` `imap_host` varchar(64);

ALTER TABLE `ident_switch`
  CHANGE `port` `imap_port` int;

ALTER TABLE `ident_switch`
  ADD COLUMN `smtp_host` varchar(64);

ALTER TABLE `ident_switch`
  ADD COLUMN `smtp_port` int CHECK(`smtp_port` > 0 AND `smtp_port` <= 65535);

ALTER TABLE `ident_switch`
  DROP COLUMN `delimiter`;

--
-- Update 2019112000
--

ALTER TABLE `ident_switch`
  ADD COLUMN `imap_delimiter` char(1);

--
-- Update 2019121300
--

ALTER TABLE `ident_switch`
  ADD COLUMN `drafts_mbox` varchar(64),
  ADD COLUMN `sent_mbox` varchar(64),
  ADD COLUMN `junk_mbox` varchar(64),
  ADD COLUMN `trash_mbox` varchar(64);
  
--
-- Update
--

ALTER TABLE `ident_switch`
  ADD COLUMN `smtp_auth` smallint NOT NULL DEFAULT 1;
