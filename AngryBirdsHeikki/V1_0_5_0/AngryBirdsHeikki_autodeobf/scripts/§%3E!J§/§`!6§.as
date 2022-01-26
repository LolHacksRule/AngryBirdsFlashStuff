package §>!J§
{
   import §[=§.§@!#§;
   import §[=§.DisplayObject;
   import §[=§.DisplayObjectContainer;
   import §[=§.Sprite;
   import §`!H§.§5f§;
   import §`!H§.§7!B§;
   import §`!H§.§@!E§;
   
   public class §`!6§ extends §=!§
   {
      
      public static const §0!c§:String = "background";
       
      
      private var mName:String;
      
      private var §,!Z§:String;
      
      private var §<O§:Number;
      
      private var §92§:Number;
      
      private var §,d§:Number;
      
      private var §"q§:Number;
      
      private var §@!I§:Number = 1.0;
      
      private var §9s§:Boolean = true;
      
      public function §`!6§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§,!Z§ = param4;
         this.§<O§ = param5;
         this.§92§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§@!I§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §`!>§() : String
      {
         return this.§,!Z§;
      }
      
      public function get x() : Number
      {
         return this.§<O§;
      }
      
      public function get y() : Number
      {
         return this.§92§;
      }
      
      public function set §-!W§(param1:Boolean) : void
      {
         this.§9s§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§@!E§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§5f§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §7!B§.§0L§(this.§`!>§,param3)))
            {
               if(_loc5_ = param3.§;X§(this.§`!>§))
               {
                  (_loc4_ = new §@!#§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§0!c§) as Sprite)
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
               if(this.name == §0!c§)
               {
                  if(!this.§9s§)
                  {
                  }
               }
               _loc4_.scaleX = this.§@!I§;
               _loc4_.scaleY = this.§@!I§;
            }
            return false;
         }
         return true;
      }
      
      public function §[!-§(param1:Number, param2:Number) : void
      {
         this.§,d§ = param1;
         this.§"q§ = param2;
      }
      
      override public function clone() : §=!§
      {
         var _loc1_:§`!6§ = new §`!6§(time,duration,this.mName,this.§,!Z§,this.§<O§,this.§92§,this.§@!I§);
         _loc1_.§9s§ = this.§9s§;
         _loc1_.§,d§ = this.§,d§;
         _loc1_.§"q§ = this.§"q§;
         return _loc1_;
      }
   }
}
