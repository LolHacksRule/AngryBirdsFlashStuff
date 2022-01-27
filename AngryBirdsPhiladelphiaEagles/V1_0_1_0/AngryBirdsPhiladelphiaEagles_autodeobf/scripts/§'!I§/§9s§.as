package §'!I§
{
   import § !N§.§6!§;
   import § !N§.§^!>§;
   import § !N§.§`v§;
   import §3H§.DisplayObject;
   import §3H§.DisplayObjectContainer;
   import §3H§.Sprite;
   import §3H§.§`!@§;
   
   public class §9s§ extends §]p§
   {
      
      public static const §`! §:String = "background";
       
      
      private var mName:String;
      
      private var §`n§:String;
      
      private var §,R§:Number;
      
      private var §=! §:Number;
      
      private var §#!6§:Number;
      
      private var §&r§:Number;
      
      private var §-<§:Number = 1.0;
      
      private var §0S§:Boolean = true;
      
      public function §9s§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§`n§ = param4;
         this.§,R§ = param5;
         this.§=! § = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§-<§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §,8§() : String
      {
         return this.§`n§;
      }
      
      public function get x() : Number
      {
         return this.§,R§;
      }
      
      public function get y() : Number
      {
         return this.§=! §;
      }
      
      public function set §0!§(param1:Boolean) : void
      {
         this.§0S§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§`v§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§6!§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §^!>§.§+C§(this.§,8§,param3)))
            {
               if(_loc5_ = param3.§?2§(this.§,8§))
               {
                  (_loc4_ = new §`!@§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§`! §) as Sprite)
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
               if(this.name == §`! §)
               {
                  if(!this.§0S§)
                  {
                  }
               }
               _loc4_.scaleX = this.§-<§;
               _loc4_.scaleY = this.§-<§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§#!6§ = param1;
         this.§&r§ = param2;
      }
      
      override public function clone() : §]p§
      {
         var _loc1_:§9s§ = new §9s§(time,duration,this.mName,this.§`n§,this.§,R§,this.§=! §,this.§-<§);
         _loc1_.§0S§ = this.§0S§;
         _loc1_.§#!6§ = this.§#!6§;
         _loc1_.§&r§ = this.§&r§;
         return _loc1_;
      }
   }
}
