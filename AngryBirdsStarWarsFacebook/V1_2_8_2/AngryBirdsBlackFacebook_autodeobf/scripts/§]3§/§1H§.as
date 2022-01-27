package §]3§
{
   import §'!P§.§9"Q§;
   import §9"U§.§,N§;
   import §9"U§.§7"1§;
   import §98§.§'"M§;
   import §[! §.§2>§;
   import §[! §.§40§;
   import §[! §.§<",§;
   
   public class §1H§ extends §9"Q§
   {
       
      
      public function §1H§(param1:String)
      {
         super(param1);
      }
      
      public function §+$§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:§,N§ = §7"1§(§4"#§.singleton.dataModel).§=#1§;
         §["x§("/shoplisting/" + _loc3_.§+!V§,param1,new §<",§(),param2);
      }
      
      public function §&!Q§(param1:Function, param2:§'"M§, param3:Function = null) : void
      {
         var _loc4_:* = "/buyitem/" + param2.itemID + "/" + param2.quantity;
         if(param2.§4<§)
         {
            _loc4_ += "/true";
         }
         §["x§(_loc4_,param1,new §2>§(),param3);
      }
      
      public function §2!4§(param1:Function, param2:Function = null) : void
      {
         §["x§("/getinventory",param1,new §40§(),param2);
      }
   }
}
