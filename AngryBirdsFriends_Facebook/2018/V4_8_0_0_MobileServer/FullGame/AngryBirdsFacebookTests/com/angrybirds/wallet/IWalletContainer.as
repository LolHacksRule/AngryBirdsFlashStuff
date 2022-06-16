package com.angrybirds.wallet
{
   import flash.display.Sprite;
   
   public interface IWalletContainer
   {
       
      
      function get walletContainer() : Sprite;
      
      function addWallet(param1:Wallet) : void;
      
      function removeWallet(param1:Wallet) : void;
      
      function get wallet() : Wallet;
   }
}
