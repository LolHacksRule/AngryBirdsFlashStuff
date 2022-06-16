package §4;§
{
   import §'!6§.§ "E§;
   import §'!6§.DisplayObject;
   import §'!6§.DisplayObjectContainer;
   import §'!6§.Sprite;
   import §<T§.§?!Z§;
   import §<T§.§^"5§;
   import §<T§.§`m§;
   
   public class §+!$§ extends §^g§
   {
      
      public static const §&!"§:String = "background";
       
      
      private var mName:String;
      
      private var §@i§:String;
      
      private var §4!K§:Number;
      
      private var §7!#§:Number;
      
      private var §,>§:Number;
      
      private var §`;§:Number;
      
      private var §+"D§:Number = 1.0;
      
      private var §,!M§:Boolean = true;
      
      public function §+!$§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§@i§ = param4;
         this.§4!K§ = param5;
         this.§7!#§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§+"D§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §4L§() : String
      {
         return this.§@i§;
      }
      
      public function get x() : Number
      {
         return this.§4!K§;
      }
      
      public function get y() : Number
      {
         return this.§7!#§;
      }
      
      public function set §7^§(param1:Boolean) : void
      {
         this.§,!M§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§`m§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§^"5§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §?!Z§.§ "8§(this.§4L§,param3)))
            {
               if(_loc5_ = param3.§#!L§(this.§4L§))
               {
                  (_loc4_ = new § "E§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§&!"§) as Sprite)
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
               if(this.name == §&!"§)
               {
                  if(!this.§,!M§)
                  {
                  }
               }
               _loc4_.scaleX = this.§+"D§;
               _loc4_.scaleY = this.§+"D§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§,>§ = param1;
         this.§`;§ = param2;
      }
      
      override public function clone() : §^g§
      {
         var _loc1_:§+!$§ = new §+!$§(time,duration,this.mName,this.§@i§,this.§4!K§,this.§7!#§,this.§+"D§);
         _loc1_.§,!M§ = this.§,!M§;
         _loc1_.§,>§ = this.§,>§;
         _loc1_.§`;§ = this.§`;§;
         return _loc1_;
      }
   }
}
