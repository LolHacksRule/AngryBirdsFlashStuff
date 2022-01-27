package §4",§
{
   import §6!M§.§8"3§;
   import §6!M§.§<!r§;
   
   public class §&!q§ extends §;"%§
   {
       
      
      public function §&!q§()
      {
         super();
      }
      
      public static function §]!]§(param1:String) : §&!q§
      {
         var _loc2_:§&!q§ = new §&!q§();
         _loc2_.§?!5§(param1);
         return _loc2_;
      }
      
      override protected function initNameHACK() : void
      {
      }
      
      override protected function calculateSpawnedObjectScores(param1:§8"3§, param2:String, param3:int) : int
      {
         var _loc6_:String = null;
         var _loc7_:§<!r§ = null;
         var _loc8_:§<!r§ = null;
         var _loc4_:Array = [];
         var _loc5_:int = 0;
         if(param2 == "BLOCK_ASTEROID_ICE_1")
         {
            _loc7_ = param1.getItem("BLOCK_ASTEROID_ICE_2");
            _loc4_.push(_loc7_);
            _loc4_.push(_loc7_);
            _loc4_.push(_loc7_);
         }
         else if(param2 == "BLOCK_ASTEROID_ICE_2")
         {
            _loc7_ = param1.getItem("BLOCK_ASTEROID_ICE_3");
            _loc4_.push(_loc7_);
            _loc4_.push(_loc7_);
            _loc4_.push(_loc7_);
         }
         if(param2 == "BLOCK_ASTEROID_BURNING_1")
         {
            _loc7_ = param1.getItem("BLOCK_ASTEROID_BURNING_PIECE_1");
            _loc4_.push(_loc7_);
            _loc4_.push(_loc7_);
            _loc4_.push(_loc7_);
            _loc7_ = param1.getItem("BLOCK_ASTEROID_BURNING_PIECE_2");
            _loc4_.push(_loc7_);
            _loc7_ = param1.getItem("BLOCK_ASTEROID_BURNING_PIECE_3");
            _loc4_.push(_loc7_);
         }
         for each(_loc6_ in _loc4_)
         {
            if(_loc8_ = param1.getItem(param2))
            {
               _loc5_ += _loc8_.score;
               if(isDamageAwardingScore(_loc8_))
               {
                  _loc5_ += _loc8_.healthMax * param3;
               }
            }
            _loc5_ += this.calculateSpawnedObjectScores(param1,_loc6_,param3);
         }
         return _loc5_;
      }
   }
}
