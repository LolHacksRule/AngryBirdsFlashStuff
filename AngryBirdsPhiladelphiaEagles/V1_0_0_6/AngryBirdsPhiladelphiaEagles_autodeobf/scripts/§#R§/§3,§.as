package §#R§
{
   import §4!0§.§3§;
   import §86§.DisplayObject;
   import §86§.Sprite;
   
   public class §3,§ extends §@i§
   {
      
      public static const §[!1§:Number = 1024;
      
      public static const §87§:Number = 658;
      
      public static const §0G§:Number = 55;
      
      public static const §4r§:String = "cubic_in_out";
      
      public static const §>9§:String = "sin_in_out";
      
      public static const §<!3§:String = "none";
       
      
      private var §=o§:String;
      
      private var §#$§:Number;
      
      private var §do§:Number;
      
      private var §]!E§:Number;
      
      private var §+?§:Number;
      
      private var § ;§:Boolean = true;
      
      private var §5!9§:String = "cubic_in_out";
      
      public function §3,§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§=o§ = param3;
         this.§#$§ = param4;
         this.§do§ = param5;
         this.§5!9§ = param6;
      }
      
      public function set §^!M§(param1:Boolean) : void
      {
         this.§ ;§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§=o§))
            {
               if(_loc4_.name == §&@§.§@!6§)
               {
                  if(this.§ ;§)
                  {
                     _loc4_.x = -this.§0!C§() * this.§?R§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§0!C§() * this.§?R§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§#$§;
                  _loc4_.y -= this.§do§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §?R§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§5!9§)
         {
            case §4r§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §>9§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §0!C§() : Number
      {
         if(this.§ ;§)
         {
            return this.§]!E§ - §[!1§;
         }
         return this.§+?§ - §87§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§]!E§ = param1;
         this.§+?§ = param2;
      }
      
      override public function clone() : §@i§
      {
         var _loc1_:§3,§ = new §3,§(time,duration,this.§=o§,this.§#$§,this.§do§,this.§5!9§);
         _loc1_.§]!E§ = this.§]!E§;
         _loc1_.§+?§ = this.§+?§;
         _loc1_.§ ;§ = this.§ ;§;
         return _loc1_;
      }
   }
}
