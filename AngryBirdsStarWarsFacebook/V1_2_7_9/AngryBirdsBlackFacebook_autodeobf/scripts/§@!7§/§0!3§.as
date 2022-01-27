package §@!7§
{
   import §%W§.§,^§;
   import §%W§.§<!U§;
   import §%W§.§[!h§;
   import §;q§.§ true§;
   import §@##§.§9!9§;
   import §`"8§.§-!w§;
   import §`"8§.§[F§;
   
   public class §0!3§ extends §9!9§
   {
       
      
      public function §0!3§(param1:String)
      {
         super(param1);
      }
      
      public function §+>§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:§[F§ = §-!w§(§;"@§.singleton.dataModel).§!#%§;
         §7"L§("/shoplisting/" + _loc3_.§'!!§,param1,new §[!h§(),param2);
      }
      
      public function §!l§(param1:Function, param2:§ true§, param3:Function = null) : void
      {
         var _loc4_:* = "/buyitem/" + param2.itemID + "/" + param2.quantity;
         if(param2.§`"p§)
         {
            _loc4_ += "/true";
         }
         §7"L§(_loc4_,param1,new §<!U§(),param3);
      }
      
      public function §`O§(param1:Function, param2:Function = null) : void
      {
         §7"L§("/getinventory",param1,new §,^§(),param2);
      }
   }
}
