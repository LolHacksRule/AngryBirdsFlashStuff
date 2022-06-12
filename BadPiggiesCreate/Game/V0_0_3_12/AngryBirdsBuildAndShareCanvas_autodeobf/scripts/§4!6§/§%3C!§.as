package §4!6§
{
   import §1!N§.§"!k§;
   import §2!w§.§7!s§;
   import §[B§.§"d§;
   
   public class §<!§ extends §@p§
   {
       
      
      private var §7!q§:Vector.<§"!k§>;
      
      public function §<!§(param1:§"d§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:§"!k§ = null;
         this.§7!q§ = new Vector.<§"!k§>();
         super(param1,param2);
         for each(_loc3_ in param2.object)
         {
            if(_loc3_.toString() == "ground")
            {
               _loc4_ = §"!k§.§2"5§(param1.objects.getObject(0));
            }
            else
            {
               _loc4_ = §7!s§.§5I§(_loc3_.toString(),param1.objects);
            }
            this.§7!q§.push(_loc4_);
         }
      }
      
      override public function update(param1:§"d§) : Boolean
      {
         var _loc3_:§"!k§ = null;
         if(this.§7!q§.length == 0)
         {
            return true;
         }
         var _loc2_:Vector.<§"!k§> = new Vector.<§"!k§>();
         §7!s§.§+!'§(this.§7!q§[0],_loc2_,param1.objects);
         for each(_loc3_ in this.§7!q§)
         {
            if(_loc2_.indexOf(_loc3_) == -1)
            {
               return false;
            }
         }
         return true;
      }
      
      override public function isObjectNeeded(param1:§"!k§) : Boolean
      {
         if(this.§7!q§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
   }
}
