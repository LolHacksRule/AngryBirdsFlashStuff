package §9"=§
{
   import §#S§.§+!;§;
   import §#S§.§?!?§;
   import §]!v§.Sprite;
   
   public class §3!p§
   {
      
      public static const §0!t§:int = 0;
      
      public static const §"z§:int = 1;
      
      public static const §31§:int = 2;
      
      public static const PARTICLE_GROUP_GAME_EFFECTS:int = 3;
      
      public static const §>!?§:int = 4;
      
      public static const §`! §:int = 5;
      
      public static const §["§:int = 6;
       
      
      private var §@"C§:Vector.<§?!g§>;
      
      protected var §>1§:§+!;§;
      
      protected var §=$§:§?!?§;
      
      public function §3!p§(param1:§+!;§, param2:§?!?§)
      {
         super();
         this.§>1§ = param1;
         this.§=$§ = param2;
         this.§@"C§ = new Vector.<§?!g§>();
         var _loc3_:int = 0;
         while(_loc3_ < §["§)
         {
            this.§@"C§[_loc3_] = new §?!g§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §+!;§
      {
         return this.§>1§;
      }
      
      public function get textureManager() : §?!?§
      {
         return this.§=$§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§?!g§ = null;
         if(this.§@"C§)
         {
            while(this.§@"C§.length)
            {
               _loc1_ = this.§@"C§.pop();
               _loc1_.dispose();
            }
         }
         this.§@"C§ = null;
      }
      
      public function §-!O§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§#Q§ = new §#Q§(this.§>1§,this.§=$§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§?!g§;
         if(_loc18_ = this.§0!b§(param3))
         {
            _loc18_.§`"6§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §`"6§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §4! §
      {
         var _loc16_:§4! § = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§?!g§;
         if(_loc17_ = this.§0!b§(param2))
         {
            _loc17_.§`"6§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §4! §
      {
         return new §4! §(this.§>1§,this.§=$§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§@"C§.length)
         {
            this.§0!b§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §!";§(param1:int) : void
      {
         var _loc2_:§?!g§ = this.§0!b§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function getGroupSprite(param1:int) : Sprite
      {
         return this.§0!b§(param1).sprite;
      }
      
      public function §0!b§(param1:Number) : §?!g§
      {
         if(this.§@"C§ != null)
         {
            return this.§@"C§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§!";§(§0!t§);
         var _loc1_:§?!g§ = this.§0!b§(§"z§);
         var _loc2_:§?!g§ = this.§0!b§(§0!t§);
         _loc1_.§-"&§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:§?!g§ = null;
         for each(_loc3_ in this.§@"C§)
         {
            _loc3_.§9!Y§(param1,param2);
         }
      }
   }
}
