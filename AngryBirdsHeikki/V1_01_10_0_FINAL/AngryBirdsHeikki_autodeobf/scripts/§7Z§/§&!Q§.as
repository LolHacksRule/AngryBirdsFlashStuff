package §7Z§
{
   import §2Y§.§7!f§;
   import §2Y§.DisplayObject;
   import §2Y§.DisplayObjectContainer;
   import §2Y§.Sprite;
   import §=!<§.§8!!§;
   import §=!<§.§>a§;
   import §=!<§.§`[§;
   
   public class §&!Q§ extends §^!§
   {
      
      public static const §<!b§:String = "background";
       
      
      private var mName:String;
      
      private var §,!E§:String;
      
      private var §"!d§:Number;
      
      private var §,!W§:Number;
      
      private var §@!-§:Number;
      
      private var §3S§:Number;
      
      private var §1-§:Number = 1.0;
      
      private var §`!`§:Boolean = true;
      
      public function §&!Q§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§,!E§ = param4;
         this.§"!d§ = param5;
         this.§,!W§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§1-§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §7m§() : String
      {
         return this.§,!E§;
      }
      
      public function get x() : Number
      {
         return this.§"!d§;
      }
      
      public function get y() : Number
      {
         return this.§,!W§;
      }
      
      public function set §'d§(param1:Boolean) : void
      {
         this.§`!`§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§>a§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§8!!§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §`[§.§&Y§(this.§7m§,param3)))
            {
               if(_loc5_ = param3.§8t§(this.§7m§))
               {
                  (_loc4_ = new §7!f§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§<!b§) as Sprite)
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
               if(this.name == §<!b§)
               {
                  if(!this.§`!`§)
                  {
                  }
               }
               _loc4_.scaleX = this.§1-§;
               _loc4_.scaleY = this.§1-§;
            }
            return false;
         }
         return true;
      }
      
      public function §1n§(param1:Number, param2:Number) : void
      {
         this.§@!-§ = param1;
         this.§3S§ = param2;
      }
      
      override public function clone() : §^!§
      {
         var _loc1_:§&!Q§ = new §&!Q§(time,duration,this.mName,this.§,!E§,this.§"!d§,this.§,!W§,this.§1-§);
         _loc1_.§`!`§ = this.§`!`§;
         _loc1_.§@!-§ = this.§@!-§;
         _loc1_.§3S§ = this.§3S§;
         return _loc1_;
      }
   }
}
