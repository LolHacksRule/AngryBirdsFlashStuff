package §<!0§
{
   import §2`§.§%!!§;
   import §2`§.§5E§;
   import §2`§.§6y§;
   import §3!J§.§4!2§;
   import §3!J§.DisplayObject;
   import §3!J§.DisplayObjectContainer;
   import §3!J§.Sprite;
   
   public class §%C§ extends §=!?§
   {
      
      public static const §<!'§:String = "background";
       
      
      private var mName:String;
      
      private var §`]§:String;
      
      private var §]!B§:Number;
      
      private var §9=§:Number;
      
      private var §!a§:Number;
      
      private var §2!y§:Number;
      
      private var §6!+§:Number = 1.0;
      
      private var §'!?§:Boolean = true;
      
      public function §%C§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§`]§ = param4;
         this.§]!B§ = param5;
         this.§9=§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§6!+§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §^!x§() : String
      {
         return this.§`]§;
      }
      
      public function get x() : Number
      {
         return this.§]!B§;
      }
      
      public function get y() : Number
      {
         return this.§9=§;
      }
      
      public function set §&!w§(param1:Boolean) : void
      {
         this.§'!?§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§%!!§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§5E§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §6y§.§=!0§(this.§^!x§,param3)))
            {
               if(_loc5_ = param3.§5!X§(this.§^!x§))
               {
                  (_loc4_ = new §4!2§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§<!'§) as Sprite)
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
               if(this.name == §<!'§)
               {
                  if(!this.§'!?§)
                  {
                  }
               }
               _loc4_.scaleX = this.§6!+§;
               _loc4_.scaleY = this.§6!+§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§!a§ = param1;
         this.§2!y§ = param2;
      }
      
      override public function clone() : §=!?§
      {
         var _loc1_:§%C§ = new §%C§(time,duration,this.mName,this.§`]§,this.§]!B§,this.§9=§,this.§6!+§);
         _loc1_.§'!?§ = this.§'!?§;
         _loc1_.§!a§ = this.§!a§;
         _loc1_.§2!y§ = this.§2!y§;
         return _loc1_;
      }
   }
}
