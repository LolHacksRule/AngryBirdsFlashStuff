package §+_§
{
   import §#Z§.DisplayObject;
   import §#Z§.DisplayObjectContainer;
   import §#Z§.Image;
   import §#Z§.Sprite;
   import §9#M§.§%"=§;
   import §9#M§.§'!-§;
   import §9#M§.§7!D§;
   
   public class §<!2§ extends §>$8§
   {
      
      public static const §+"i§:String = "background";
       
      
      private var §-#3§:String;
      
      private var §>S§:String;
      
      private var §0k§:Number;
      
      private var §@_§:Number;
      
      private var §@!l§:Number;
      
      private var §,7§:Number;
      
      private var §7#7§:Number = 1.0;
      
      private var §'V§:Boolean = true;
      
      public function §<!2§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.§-#3§ = param3;
         this.§>S§ = param4;
         this.§0k§ = param5;
         this.§@_§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§7#7§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.§-#3§;
      }
      
      public function get imageName() : String
      {
         return this.§>S§;
      }
      
      public function get x() : Number
      {
         return this.§0k§;
      }
      
      public function get y() : Number
      {
         return this.§@_§;
      }
      
      public function set §"!$§(param1:Boolean) : void
      {
         this.§'V§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§%"=§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§'!-§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §7!D§.§&##§(this.imageName,param3)))
            {
               if(_loc5_ = param3.getTexture(this.imageName))
               {
                  (_loc4_ = new Image(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§+"i§) as Sprite)
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
               if(this.name == §+"i§)
               {
                  if(!this.§'V§)
                  {
                  }
               }
               _loc4_.scaleX = this.§7#7§;
               _loc4_.scaleY = this.§7#7§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§@!l§ = param1;
         this.§,7§ = param2;
      }
      
      override public function clone() : §>$8§
      {
         var _loc1_:§<!2§ = new §<!2§(time,duration,this.§-#3§,this.§>S§,this.§0k§,this.§@_§,this.§7#7§);
         _loc1_.§'V§ = this.§'V§;
         _loc1_.§@!l§ = this.§@!l§;
         _loc1_.§,7§ = this.§,7§;
         return _loc1_;
      }
   }
}
