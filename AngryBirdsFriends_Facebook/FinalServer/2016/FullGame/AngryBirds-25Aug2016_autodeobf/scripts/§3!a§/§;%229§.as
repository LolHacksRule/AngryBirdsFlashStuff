package §3!a§
{
   import §9$§.DisplayObject;
   import §9$§.DisplayObjectContainer;
   import §9$§.Image;
   import §9$§.Sprite;
   import §@"§.§&!=§;
   import §@"§.§'!u§;
   import §@"§.§+!3§;
   
   public class §;"9§ extends §`#K§
   {
      
      public static const §4#i§:String = "background";
       
      
      private var §2!4§:String;
      
      private var §&"U§:String;
      
      private var §+!5§:Number;
      
      private var §'! §:Number;
      
      private var §]<§:Number;
      
      private var §""b§:Number;
      
      private var §9"7§:Number = 1.0;
      
      private var §7"y§:Boolean = true;
      
      public function §;"9§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.§2!4§ = param3;
         this.§&"U§ = param4;
         this.§+!5§ = param5;
         this.§'! § = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§9"7§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.§2!4§;
      }
      
      public function get imageName() : String
      {
         return this.§&"U§;
      }
      
      public function get x() : Number
      {
         return this.§+!5§;
      }
      
      public function get y() : Number
      {
         return this.§'! §;
      }
      
      public function set §&A§(param1:Boolean) : void
      {
         this.§7"y§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§&!=§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§+!3§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §'!u§.§9#^§(this.imageName,param3)))
            {
               if(_loc5_ = param3.getTexture(this.imageName))
               {
                  (_loc4_ = new Image(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§4#i§) as Sprite)
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
               if(this.name == §4#i§)
               {
                  if(!this.§7"y§)
                  {
                  }
               }
               _loc4_.scaleX = this.§9"7§;
               _loc4_.scaleY = this.§9"7§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§]<§ = param1;
         this.§""b§ = param2;
      }
      
      override public function clone() : §`#K§
      {
         var _loc1_:§;"9§ = new §;"9§(time,duration,this.§2!4§,this.§&"U§,this.§+!5§,this.§'! §,this.§9"7§);
         _loc1_.§7"y§ = this.§7"y§;
         _loc1_.§]<§ = this.§]<§;
         _loc1_.§""b§ = this.§""b§;
         return _loc1_;
      }
   }
}
