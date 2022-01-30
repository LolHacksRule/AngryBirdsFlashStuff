package §"E§
{
   import §0!Y§.§#"5§;
   import §0!Y§.DisplayObject;
   import §0!Y§.DisplayObjectContainer;
   import §0!Y§.Sprite;
   import §6!?§.§0+§;
   import §6!?§.§6B§;
   import §6!?§.§`!O§;
   
   public class §!b§ extends §%!N§
   {
      
      public static const §'!]§:String = "background";
       
      
      private var mName:String;
      
      private var §`_§:String;
      
      private var §%!H§:Number;
      
      private var §^<§:Number;
      
      private var §?!<§:Number;
      
      private var §1+§:Number;
      
      private var §2!t§:Number = 1.0;
      
      private var §8!f§:Boolean = true;
      
      public function §!b§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§`_§ = param4;
         this.§%!H§ = param5;
         this.§^<§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§2!t§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §,!J§() : String
      {
         return this.§`_§;
      }
      
      public function get x() : Number
      {
         return this.§%!H§;
      }
      
      public function get y() : Number
      {
         return this.§^<§;
      }
      
      public function set §@!Q§(param1:Boolean) : void
      {
         this.§8!f§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§`!O§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§6B§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §0+§.§9!+§(this.§,!J§,param3)))
            {
               if(_loc5_ = param3.§=!'§(this.§,!J§))
               {
                  (_loc4_ = new §#"5§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§'!]§) as Sprite)
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
               if(this.name == §'!]§)
               {
                  if(!this.§8!f§)
                  {
                  }
               }
               _loc4_.scaleX = this.§2!t§;
               _loc4_.scaleY = this.§2!t§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§?!<§ = param1;
         this.§1+§ = param2;
      }
      
      override public function clone() : §%!N§
      {
         var _loc1_:§!b§ = new §!b§(time,duration,this.mName,this.§`_§,this.§%!H§,this.§^<§,this.§2!t§);
         _loc1_.§8!f§ = this.§8!f§;
         _loc1_.§?!<§ = this.§?!<§;
         _loc1_.§1+§ = this.§1+§;
         return _loc1_;
      }
   }
}
