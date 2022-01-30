package § L§
{
   import §4!s§.§%I§;
   import §="$§.§"!#§;
   import §?^§.§0Q§;
   
   public class §7""§ extends §4"8§
   {
       
      
      private var §>!l§:Vector.<§0Q§>;
      
      public function §7""§(param1:§%I§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:§0Q§ = null;
         this.§>!l§ = new Vector.<§0Q§>();
         super(param1,param2);
         for each(_loc3_ in param2.object)
         {
            if(_loc3_.toString() == "ground")
            {
               _loc4_ = §0Q§.§super§(param1.objects.getObject(0));
            }
            else
            {
               _loc4_ = §"!#§.§ !&§(_loc3_.toString(),param1.objects);
            }
            this.§>!l§.push(_loc4_);
         }
      }
      
      override public function update(param1:§%I§) : Boolean
      {
         var _loc3_:§0Q§ = null;
         if(this.§>!l§.length == 0)
         {
            return true;
         }
         var _loc2_:Vector.<§0Q§> = new Vector.<§0Q§>();
         §"!#§.§<!g§(this.§>!l§[0],_loc2_,param1.objects);
         for each(_loc3_ in this.§>!l§)
         {
            if(_loc2_.indexOf(_loc3_) == -1)
            {
               return false;
            }
         }
         return true;
      }
      
      override public function isObjectNeeded(param1:§0Q§) : Boolean
      {
         if(this.§>!l§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
   }
}
