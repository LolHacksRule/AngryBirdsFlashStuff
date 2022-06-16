package §;$-§
{
   import §^"S§.DisplayObject;
   import §^"S§.DisplayObjectContainer;
   import §^"S§.Image;
   import §^"S§.Sprite;
   import §`"8§.§34§;
   import §`"8§.§="?§;
   import §`"8§.§`"X§;
   
   public class §=!^§ extends §<#N§
   {
      
      public static const §;!l§:String = "background";
       
      
      private var §=q§:String;
      
      private var §6"@§:String;
      
      private var §8u§:Number;
      
      private var §!#§:Number;
      
      private var §4"V§:Number;
      
      private var §""&§:Number;
      
      private var §+!b§:Number = 1.0;
      
      private var §'!5§:Boolean = true;
      
      public function §=!^§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.§=q§ = param3;
         this.§6"@§ = param4;
         this.§8u§ = param5;
         this.§!#§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§+!b§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.§=q§;
      }
      
      public function get imageName() : String
      {
         return this.§6"@§;
      }
      
      public function get x() : Number
      {
         return this.§8u§;
      }
      
      public function get y() : Number
      {
         return this.§!#§;
      }
      
      public function set §6"U§(param1:Boolean) : void
      {
         this.§'!5§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§34§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§`"X§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §="?§.§-#y§(this.imageName,param3)))
            {
               if(_loc5_ = param3.getTexture(this.imageName))
               {
                  (_loc4_ = new Image(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§;!l§) as Sprite)
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
               if(this.name == §;!l§)
               {
                  if(!this.§'!5§)
                  {
                  }
               }
               _loc4_.scaleX = this.§+!b§;
               _loc4_.scaleY = this.§+!b§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§4"V§ = param1;
         this.§""&§ = param2;
      }
      
      override public function clone() : §<#N§
      {
         var _loc1_:§=!^§ = new §=!^§(time,duration,this.§=q§,this.§6"@§,this.§8u§,this.§!#§,this.§+!b§);
         _loc1_.§'!5§ = this.§'!5§;
         _loc1_.§4"V§ = this.§4"V§;
         _loc1_.§""&§ = this.§""&§;
         return _loc1_;
      }
   }
}
