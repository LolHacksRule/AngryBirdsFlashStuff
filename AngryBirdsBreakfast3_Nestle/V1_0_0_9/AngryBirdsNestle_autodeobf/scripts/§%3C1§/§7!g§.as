package §<1§
{
   import §0!_§.§!!G§;
   import §`!B§.DisplayObject;
   import §`!B§.Sprite;
   
   public class §7!g§ extends §@",§
   {
      
      public static const §8#§:Number = 1024;
      
      public static const §1k§:Number = 658;
      
      public static const §@q§:Number = 55;
      
      public static const §;?§:String = "cubic_in_out";
      
      public static const §;!Y§:String = "sin_in_out";
      
      public static const §#y§:String = "none";
       
      
      private var §8U§:String;
      
      private var §0O§:Number;
      
      private var §=!v§:Number;
      
      private var §5"5§:Number;
      
      private var §"!i§:Number;
      
      private var §@!!§:Boolean = true;
      
      private var §=3§:String = "cubic_in_out";
      
      public function §7!g§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§8U§ = param3;
         this.§0O§ = param4;
         this.§=!v§ = param5;
         this.§=3§ = param6;
      }
      
      public function set horizontal(param1:Boolean) : void
      {
         this.§@!!§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!!G§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§8U§))
            {
               if(_loc4_.name == §,!c§.§^!=§)
               {
                  if(this.§@!!§)
                  {
                     _loc4_.x = -this.§,o§() * this.§01§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§,o§() * this.§01§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§0O§;
                  _loc4_.y -= this.§=!v§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §01§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§=3§)
         {
            case §;?§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §;!Y§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §,o§() : Number
      {
         if(this.§@!!§)
         {
            return this.§5"5§ - §8#§;
         }
         return this.§"!i§ - §1k§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§5"5§ = param1;
         this.§"!i§ = param2;
      }
      
      override public function clone() : §@",§
      {
         var _loc1_:§7!g§ = new §7!g§(time,duration,this.§8U§,this.§0O§,this.§=!v§,this.§=3§);
         _loc1_.§5"5§ = this.§5"5§;
         _loc1_.§"!i§ = this.§"!i§;
         _loc1_.§@!!§ = this.§@!!§;
         return _loc1_;
      }
   }
}
