package §%%§
{
   import §&"5§.§7!P§;
   import §default§.DisplayObject;
   import §default§.Sprite;
   
   public class §,g§ extends §#K§
   {
      
      public static const §^!N§:Number = 1024;
      
      public static const §5!P§:Number = 658;
      
      public static const §3!@§:Number = 55;
      
      public static const §`!9§:String = "cubic_in_out";
      
      public static const §]!t§:String = "sin_in_out";
      
      public static const §^0§:String = "none";
       
      
      private var §3!3§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §7!T§:Number;
      
      private var §>w§:Number;
      
      private var §4!M§:Boolean = true;
      
      private var §#!W§:String = "cubic_in_out";
      
      public function §,g§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§3!3§ = param3;
         this.mX = param4;
         this.mY = param5;
         this.§#!W§ = param6;
      }
      
      public function set §<A§(param1:Boolean) : void
      {
         this.§4!M§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7!P§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§3!3§))
            {
               if(_loc4_.name == §^d§.§8Z§)
               {
                  if(this.§4!M§)
                  {
                     _loc4_.x = -this.§9!A§() * this.§-""§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§9!A§() * this.§-""§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.mX;
                  _loc4_.y -= this.mY;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §-""§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§#!W§)
         {
            case §`!9§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §]!t§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §9!A§() : Number
      {
         if(this.§4!M§)
         {
            return this.§7!T§ - §^!N§;
         }
         return this.§>w§ - §5!P§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§7!T§ = param1;
         this.§>w§ = param2;
      }
      
      override public function clone() : §#K§
      {
         var _loc1_:§,g§ = new §,g§(time,duration,this.§3!3§,this.mX,this.mY,this.§#!W§);
         _loc1_.§7!T§ = this.§7!T§;
         _loc1_.§>w§ = this.§>w§;
         _loc1_.§4!M§ = this.§4!M§;
         return _loc1_;
      }
   }
}
