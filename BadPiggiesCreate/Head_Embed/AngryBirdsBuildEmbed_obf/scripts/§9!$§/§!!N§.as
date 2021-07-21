package §9!$§
{
   import §-!`§.§7!J§;
   import §-!`§.DisplayObject;
   import §-!`§.DisplayObjectContainer;
   import §-!`§.Sprite;
   import §=U§.§3p§;
   import §=U§.§<6§;
   import §=U§.§>?§;
   
   public class §!!N§ extends §&!W§
   {
      
      public static const §!6§:String = "background";
       
      
      private var mName:String;
      
      private var §'!E§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §4!L§:Number;
      
      private var §"!C§:Number;
      
      private var §1>§:Number = 1.0;
      
      private var §;!O§:Boolean = true;
      
      public function §!!N§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§'!E§ = param4;
         this.mX = param5;
         this.mY = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§1>§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §%!?§() : String
      {
         return this.§'!E§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §#@§(param1:Boolean) : void
      {
         this.§;!O§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3p§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§>?§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §<6§.§&2§(this.§%!?§,param3)))
            {
               if(_loc5_ = param3.§8!@§(this.§%!?§))
               {
                  (_loc4_ = new §7!J§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§!6§) as Sprite)
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
               if(this.name == §!6§)
               {
                  if(!this.§;!O§)
                  {
                  }
               }
               _loc4_.scaleX = this.§1>§;
               _loc4_.scaleY = this.§1>§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§4!L§ = param1;
         this.§"!C§ = param2;
      }
      
      override public function clone() : §&!W§
      {
         var _loc1_:§!!N§ = new §!!N§(time,duration,this.mName,this.§'!E§,this.mX,this.mY,this.§1>§);
         _loc1_.§;!O§ = this.§;!O§;
         _loc1_.§4!L§ = this.§4!L§;
         _loc1_.§"!C§ = this.§"!C§;
         return _loc1_;
      }
   }
}
