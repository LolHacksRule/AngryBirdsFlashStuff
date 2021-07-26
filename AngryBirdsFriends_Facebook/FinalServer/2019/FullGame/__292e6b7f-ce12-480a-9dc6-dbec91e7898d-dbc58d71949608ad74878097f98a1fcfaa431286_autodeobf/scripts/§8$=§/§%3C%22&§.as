package §8$=§
{
   import §,#e§.DisplayObject;
   import §,#e§.DisplayObjectContainer;
   import §,#e§.Image;
   import §,#e§.Sprite;
   import §7"T§.§#"^§;
   import §7"T§.§,o§;
   import §7"T§.§4!L§;
   
   public class §<"&§ extends §=Q§
   {
      
      public static const §6A§:String = "background";
       
      
      private var §&$"§:String;
      
      private var §9$B§:String;
      
      private var §&$'§:Number;
      
      private var §<#-§:Number;
      
      private var §>"h§:Number;
      
      private var §"#G§:Number;
      
      private var §8f§:Number = 1.0;
      
      private var §`$#§:Boolean = true;
      
      public function §<"&§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.§&$"§ = param3;
         this.§9$B§ = param4;
         this.§&$'§ = param5;
         this.§<#-§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§8f§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.§&$"§;
      }
      
      public function get imageName() : String
      {
         return this.§9$B§;
      }
      
      public function get x() : Number
      {
         return this.§&$'§;
      }
      
      public function get y() : Number
      {
         return this.§<#-§;
      }
      
      public function set §]!x§(param1:Boolean) : void
      {
         this.§`$#§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§#"^§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§4!L§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §,o§.§7#'§(this.imageName,param3)))
            {
               if(_loc5_ = param3.getTexture(this.imageName))
               {
                  (_loc4_ = new Image(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§6A§) as Sprite)
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
               if(this.name == §6A§)
               {
                  if(!this.§`$#§)
                  {
                  }
               }
               _loc4_.scaleX = this.§8f§;
               _loc4_.scaleY = this.§8f§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§>"h§ = param1;
         this.§"#G§ = param2;
      }
      
      override public function clone() : §=Q§
      {
         var _loc1_:§<"&§ = new §<"&§(time,duration,this.§&$"§,this.§9$B§,this.§&$'§,this.§<#-§,this.§8f§);
         _loc1_.§`$#§ = this.§`$#§;
         _loc1_.§>"h§ = this.§>"h§;
         _loc1_.§"#G§ = this.§"#G§;
         return _loc1_;
      }
   }
}
