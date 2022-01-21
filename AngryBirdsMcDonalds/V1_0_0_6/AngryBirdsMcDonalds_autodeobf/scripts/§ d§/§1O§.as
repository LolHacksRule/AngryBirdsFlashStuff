package § d§
{
   import §&!!§.§<!'§;
   import §2![§.DisplayObject;
   import §2![§.Sprite;
   
   public class §1O§ extends §,!+§
   {
      
      public static const §]?§:Number = 1024;
      
      public static const §@+§:Number = 658;
      
      public static const §!!C§:Number = 55;
      
      public static const §>!W§:String = "cubic_in_out";
      
      public static const §>!m§:String = "sin_in_out";
      
      public static const §9<§:String = "none";
       
      
      private var §,6§:String;
      
      private var §+p§:Number;
      
      private var §,,§:Number;
      
      private var §3y§:Number;
      
      private var § 5§:Number;
      
      private var §+n§:Boolean = true;
      
      private var §8!`§:String = "cubic_in_out";
      
      public function §1O§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§,6§ = param3;
         this.§+p§ = param4;
         this.§,,§ = param5;
         this.§8!`§ = param6;
      }
      
      public function set §@!k§(param1:Boolean) : void
      {
         this.§+n§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§<!'§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§,6§))
            {
               if(_loc4_.name == §"!@§.§1!o§)
               {
                  if(this.§+n§)
                  {
                     _loc4_.x = -this.§^Y§() * this.§^!M§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§^Y§() * this.§^!M§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§+p§;
                  _loc4_.y -= this.§,,§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §^!M§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§8!`§)
         {
            case §>!W§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §>!m§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §^Y§() : Number
      {
         if(this.§+n§)
         {
            return this.§3y§ - §]?§;
         }
         return this.§ 5§ - §@+§;
      }
      
      public function §]f§(param1:Number, param2:Number) : void
      {
         this.§3y§ = param1;
         this.§ 5§ = param2;
      }
      
      override public function clone() : §,!+§
      {
         var _loc1_:§1O§ = new §1O§(time,duration,this.§,6§,this.§+p§,this.§,,§,this.§8!`§);
         _loc1_.§3y§ = this.§3y§;
         _loc1_.§ 5§ = this.§ 5§;
         _loc1_.§+n§ = this.§+n§;
         return _loc1_;
      }
   }
}
