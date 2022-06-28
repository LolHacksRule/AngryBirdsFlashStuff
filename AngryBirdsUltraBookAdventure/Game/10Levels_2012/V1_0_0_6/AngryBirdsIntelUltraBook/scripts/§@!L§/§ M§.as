package §@!L§
{
   import §7!B§.§-§;
   import §7!B§.DisplayObject;
   import §7!B§.DisplayObjectContainer;
   import §7!B§.Sprite;
   import §^!Y§.§'R§;
   import §^!Y§.§1C§;
   import §^!Y§.§]p§;
   
   public class § M§ extends §9N§
   {
      
      public static const §;!_§:String = "background";
       
      
      private var mName:String;
      
      private var §1!T§:String;
      
      private var §#!u§:Number;
      
      private var §<h§:Number;
      
      private var §2!d§:Number;
      
      private var §@@§:Number;
      
      private var §8n§:Number = 1.0;
      
      private var §@!G§:Boolean = true;
      
      public function § M§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§1!T§ = param4;
         this.§#!u§ = param5;
         this.§<h§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§8n§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §5V§() : String
      {
         return this.§1!T§;
      }
      
      public function get x() : Number
      {
         return this.§#!u§;
      }
      
      public function get y() : Number
      {
         return this.§<h§;
      }
      
      public function set §6!R§(param1:Boolean) : void
      {
         this.§@!G§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'R§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§1C§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §]p§.§,!$§(this.§5V§,param3)))
            {
               if(_loc5_ = param3.§2+§(this.§5V§))
               {
                  (_loc4_ = new §-§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§;!_§) as Sprite)
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
               if(this.name == §;!_§)
               {
                  if(!this.§@!G§)
                  {
                  }
               }
               _loc4_.scaleX = this.§8n§;
               _loc4_.scaleY = this.§8n§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§2!d§ = param1;
         this.§@@§ = param2;
      }
      
      override public function clone() : §9N§
      {
         var _loc1_:§ M§ = new § M§(time,duration,this.mName,this.§1!T§,this.§#!u§,this.§<h§,this.§8n§);
         _loc1_.§@!G§ = this.§@!G§;
         _loc1_.§2!d§ = this.§2!d§;
         _loc1_.§@@§ = this.§@@§;
         return _loc1_;
      }
   }
}
