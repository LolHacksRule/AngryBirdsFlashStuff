package §`"0§
{
   import §'G§.§0!d§;
   import §'G§.§3$§;
   import §'G§.§3$B§;
   import §6#H§.DisplayObject;
   import §6#H§.DisplayObjectContainer;
   import §6#H§.Image;
   import §6#H§.Sprite;
   
   public class §@!9§ extends §?#d§
   {
      
      public static const §7!X§:String = "background";
       
      
      private var §!I§:String;
      
      private var §@!J§:String;
      
      private var §["d§:Number;
      
      private var §%#z§:Number;
      
      private var §>H§:Number;
      
      private var §^l§:Number;
      
      private var §!#2§:Number = 1.0;
      
      private var §`#L§:Boolean = true;
      
      public function §@!9§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.§!I§ = param3;
         this.§@!J§ = param4;
         this.§["d§ = param5;
         this.§%#z§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§!#2§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.§!I§;
      }
      
      public function get imageName() : String
      {
         return this.§@!J§;
      }
      
      public function get x() : Number
      {
         return this.§["d§;
      }
      
      public function get y() : Number
      {
         return this.§%#z§;
      }
      
      public function set §;1§(param1:Boolean) : void
      {
         this.§`#L§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3$§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§3$B§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §0!d§.§4#-§(this.imageName,param3)))
            {
               if(_loc5_ = param3.getTexture(this.imageName))
               {
                  (_loc4_ = new Image(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§7!X§) as Sprite)
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
               if(this.name == §7!X§)
               {
                  if(!this.§`#L§)
                  {
                  }
               }
               _loc4_.scaleX = this.§!#2§;
               _loc4_.scaleY = this.§!#2§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§>H§ = param1;
         this.§^l§ = param2;
      }
      
      override public function clone() : §?#d§
      {
         var _loc1_:§@!9§ = new §@!9§(time,duration,this.§!I§,this.§@!J§,this.§["d§,this.§%#z§,this.§!#2§);
         _loc1_.§`#L§ = this.§`#L§;
         _loc1_.§>H§ = this.§>H§;
         _loc1_.§^l§ = this.§^l§;
         return _loc1_;
      }
   }
}
