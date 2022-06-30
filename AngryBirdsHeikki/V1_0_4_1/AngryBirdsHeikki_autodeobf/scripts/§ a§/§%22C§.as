package § a§
{
   import §%O§.§ !§;
   import §%O§.§,!R§;
   import §%O§.§=I§;
   import §<!-§.DisplayObject;
   import §<!-§.DisplayObjectContainer;
   import §<!-§.Sprite;
   import §<!-§.§^B§;
   
   public class §"C§ extends §&K§
   {
      
      public static const §&!A§:String = "background";
       
      
      private var mName:String;
      
      private var §]!0§:String;
      
      private var §-!c§:Number;
      
      private var §3![§:Number;
      
      private var §]2§:Number;
      
      private var §?R§:Number;
      
      private var §=!,§:Number = 1.0;
      
      private var §3[§:Boolean = true;
      
      public function §"C§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§]!0§ = param4;
         this.§-!c§ = param5;
         this.§3![§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§=!,§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §'u§() : String
      {
         return this.§]!0§;
      }
      
      public function get x() : Number
      {
         return this.§-!c§;
      }
      
      public function get y() : Number
      {
         return this.§3![§;
      }
      
      public function set §8>§(param1:Boolean) : void
      {
         this.§3[§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§ !§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§=I§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §,!R§.§!"§(this.§'u§,param3)))
            {
               if(_loc5_ = param3.§^!3§(this.§'u§))
               {
                  (_loc4_ = new §^B§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§&!A§) as Sprite)
               {
                  param2 = _loc6_;
               }
               _loc4_.x += this.x;
               _loc4_.y += this.y;
               _loc4_.name = this.name;
               if(_loc7_ = param2.getChildByName(this.name))
               {
                  (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                  _loc8_.addChild(_loc4_);
               }
               else
               {
                  param2.addChild(_loc4_);
               }
               if(this.name == §&!A§)
               {
                  if(!this.§3[§)
                  {
                  }
               }
               _loc4_.scaleX = this.§=!,§;
               _loc4_.scaleY = this.§=!,§;
            }
            return false;
         }
         return true;
      }
      
      public function §&Q§(param1:Number, param2:Number) : void
      {
         this.§]2§ = param1;
         this.§?R§ = param2;
      }
      
      override public function clone() : §&K§
      {
         var _loc1_:§"C§ = new §"C§(time,duration,this.mName,this.§]!0§,this.§-!c§,this.§3![§,this.§=!,§);
         _loc1_.§3[§ = this.§3[§;
         _loc1_.§]2§ = this.§]2§;
         _loc1_.§?R§ = this.§?R§;
         return _loc1_;
      }
   }
}
