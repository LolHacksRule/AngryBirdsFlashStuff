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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super(param1);
         }
      }
      
      public function §';§(param1:Function, param2:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§%"[§ = §@#B§(§4#;§.singleton.dataModel).§&"9§;
         if(!(_loc4_ && param1))
         {
            §5#'§("/shoplisting/" + _loc3_.§'#=§,param1,new §?g§(),param2);
         }
      }
      
      public function §9?§(param1:Function, param2:§,T§, param3:Function = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push("/buyitem/" + param2.itemID);
         if(!(_loc5_ && param1))
         {
            §§push(§§pop() + "/");
            if(_loc6_)
            {
               §§push(§§pop() + param2.quantity);
            }
         }
         var _loc4_:* = §§pop();
         if(_loc6_ || param1)
         {
            if(param2.§%D§)
            {
               if(!(_loc5_ && param2))
               {
                  _loc4_ += "/true";
                  addr99:
                  while(true)
                  {
                  }
                  addr99:
               }
               §§goto(addr99);
            }
            while(true)
            {
               §5#'§(_loc4_,param1,new §!"C§(),param3);
               if(!(_loc5_ && param3))
               {
                  break;
               }
               §§goto(addr99);
            }
            return;
         }
         §§goto(addr99);
      }
      
      public function §-n§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §5#'§("/getinventory",param1,new §7r§(),param2);
         }
      }
   }
}
