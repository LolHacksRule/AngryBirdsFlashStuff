package §9L§
{
   import §5!l§.§ !D§;
   import §5!l§.§9Z§;
   import §5!l§.§=!;§;
   import §5x§.§2!K§;
   import §5x§.DisplayObject;
   import §5x§.DisplayObjectContainer;
   import §5x§.Sprite;
   
   public class §,!l§ extends §<6§
   {
      
      public static const §[6§:String = "background";
       
      
      private var mName:String;
      
      private var §]P§:String;
      
      private var § +§:Number;
      
      private var §'Z§:Number;
      
      private var §;a§:Number;
      
      private var §"[§:Number;
      
      private var §@!-§:Number = 1.0;
      
      private var §1<§:Boolean = true;
      
      public function §,!l§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§]P§ = param4;
         this.§ +§ = param5;
         this.§'Z§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§@!-§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §?!@§() : String
      {
         return this.§]P§;
      }
      
      public function get x() : Number
      {
         return this.§ +§;
      }
      
      public function get y() : Number
      {
         return this.§'Z§;
      }
      
      public function set §[z§(param1:Boolean) : void
      {
         this.§1<§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§ !D§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§9Z§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §=!;§.§3W§(this.§?!@§,param3)))
            {
               if(_loc5_ = param3.§2x§(this.§?!@§))
               {
                  (_loc4_ = new §2!K§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§[6§) as Sprite)
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
               if(this.name == §[6§)
               {
                  if(!this.§1<§)
                  {
                  }
               }
               _loc4_.scaleX = this.§@!-§;
               _loc4_.scaleY = this.§@!-§;
            }
            return false;
         }
         return true;
      }
      
      public function §3s§(param1:Number, param2:Number) : void
      {
         this.§;a§ = param1;
         this.§"[§ = param2;
      }
      
      override public function clone() : §<6§
      {
         var _loc1_:§,!l§ = new §,!l§(time,duration,this.mName,this.§]P§,this.§ +§,this.§'Z§,this.§@!-§);
         _loc1_.§1<§ = this.§1<§;
         _loc1_.§;a§ = this.§;a§;
         _loc1_.§"[§ = this.§"[§;
         return _loc1_;
      }
   }
}
