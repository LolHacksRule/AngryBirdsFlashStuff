package §4A§
{
   import §'!&§.DisplayObject;
   import §'!&§.Sprite;
   import §8o§.§5"%§;
   
   public class §4"#§ extends §9!i§
   {
      
      public static const §+g§:Number = 1024;
      
      public static const §5+§:Number = 658;
      
      public static const §3V§:Number = 55;
      
      public static const §7N§:String = "cubic_in_out";
      
      public static const §-"?§:String = "sin_in_out";
      
      public static const §2",§:String = "none";
       
      
      private var §-!^§:String;
      
      private var §>!J§:Number;
      
      private var §;`§:Number;
      
      private var §^M§:Number;
      
      private var §2!u§:Number;
      
      private var §&!o§:Boolean = true;
      
      private var §-!e§:String = "cubic_in_out";
      
      public function §4"#§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§-!^§ = param3;
         this.§>!J§ = param4;
         this.§;`§ = param5;
         this.§-!e§ = param6;
      }
      
      public function set §0"A§(param1:Boolean) : void
      {
         this.§&!o§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5"%§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§-!^§))
            {
               if(_loc4_.name == §0!^§.§8!E§)
               {
                  if(this.§&!o§)
                  {
                     _loc4_.x = -this.§=S§() * this.§ M§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§=S§() * this.§ M§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§>!J§;
                  _loc4_.y -= this.§;`§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function § M§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§-!e§)
         {
            case §7N§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §-"?§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §=S§() : Number
      {
         if(this.§&!o§)
         {
            return this.§^M§ - §+g§;
         }
         return this.§2!u§ - §5+§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§^M§ = param1;
         this.§2!u§ = param2;
      }
      
      override public function clone() : §9!i§
      {
         var _loc1_:§4"#§ = new §4"#§(time,duration,this.§-!^§,this.§>!J§,this.§;`§,this.§-!e§);
         _loc1_.§^M§ = this.§^M§;
         _loc1_.§2!u§ = this.§2!u§;
         _loc1_.§&!o§ = this.§&!o§;
         return _loc1_;
      }
   }
}
