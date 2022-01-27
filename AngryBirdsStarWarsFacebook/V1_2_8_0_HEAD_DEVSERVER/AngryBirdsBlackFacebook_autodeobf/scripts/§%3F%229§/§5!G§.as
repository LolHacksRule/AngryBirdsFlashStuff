package §?"9§
{
   import §,"N§.§%"[§;
   import §,"N§.§@#B§;
   import §7K§.§,T§;
   import §;#Q§.§[§;
   import §>"$§.§!"C§;
   import §>"$§.§7r§;
   import §>"$§.§?g§;
   
   public class §5!G§ extends §[#2§
   {
       
      
      public function §5!G§(param1:String)
      {
         super(param1);
      }
      
      public function §';§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:§%"[§ = §@#B§(§4#;§.singleton.dataModel).§&"9§;
         §5#'§("/shoplisting/" + _loc3_.§'#=§,param1,new §?g§(),param2);
      }
      
      public function §9?§(param1:Function, param2:§,T§, param3:Function = null) : void
      {
         var _loc4_:* = "/buyitem/" + param2.itemID + "/" + param2.quantity;
         if(param2.§%D§)
         {
            _loc4_ += "/true";
         }
         §5#'§(_loc4_,param1,new §!"C§(),param3);
      }
      
      public function §-n§(param1:Function, param2:Function = null) : void
      {
         §5#'§("/getinventory",param1,new §7r§(),param2);
      }
   }
}
