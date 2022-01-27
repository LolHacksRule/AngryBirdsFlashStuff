package §`!`§
{
   import §&!]§.§#[§;
   import §&!]§.DisplayObject;
   import §&!]§.DisplayObjectContainer;
   import §&!]§.Sprite;
   import §9!v§.§"[§;
   import §9!v§.§6a§;
   import §9!v§.§8M§;
   
   public class §>!P§ extends §=j§
   {
      
      public static const §9@§:String = "background";
       
      
      private var mName:String;
      
      private var §4!u§:String;
      
      private var §''§:Number;
      
      private var §3"<§:Number;
      
      private var §]!d§:Number;
      
      private var §!"-§:Number;
      
      private var §^!<§:Number = 1.0;
      
      private var §'Q§:Boolean = true;
      
      public function §>!P§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§4!u§ = param4;
         this.§''§ = param5;
         this.§3"<§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§^!<§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §'q§() : String
      {
         return this.§4!u§;
      }
      
      public function get x() : Number
      {
         return this.§''§;
      }
      
      public function get y() : Number
      {
         return this.§3"<§;
      }
      
      public function set §"R§(param1:Boolean) : void
      {
         this.§'Q§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6a§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§"[§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §8M§.§;Q§(this.§'q§,param3)))
            {
               if(_loc5_ = param3.getTexture(this.§'q§))
               {
                  (_loc4_ = new §#[§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§9@§) as Sprite)
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
               if(this.name == §9@§)
               {
                  if(!this.§'Q§)
                  {
                  }
               }
               _loc4_.scaleX = this.§^!<§;
               _loc4_.scaleY = this.§^!<§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§]!d§ = param1;
         this.§!"-§ = param2;
      }
      
      override public function clone() : §=j§
      {
         var _loc1_:§>!P§ = new §>!P§(time,duration,this.mName,this.§4!u§,this.§''§,this.§3"<§,this.§^!<§);
         _loc1_.§'Q§ = this.§'Q§;
         _loc1_.§]!d§ = this.§]!d§;
         _loc1_.§!"-§ = this.§!"-§;
         return _loc1_;
      }
   }
}
