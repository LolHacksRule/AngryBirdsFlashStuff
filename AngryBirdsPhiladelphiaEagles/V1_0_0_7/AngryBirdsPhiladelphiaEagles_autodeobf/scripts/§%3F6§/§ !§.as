package §?6§
{
   import §+f§.§4!8§;
   import §+f§.§8!=§;
   import §+f§.§=3§;
   import §4G§.DisplayObject;
   import §4G§.DisplayObjectContainer;
   import §4G§.Sprite;
   import §4G§.§`l§;
   
   public class § !§ extends §8+§
   {
      
      public static const §'#§:String = "background";
       
      
      private var mName:String;
      
      private var §;m§:String;
      
      private var §#+§:Number;
      
      private var §+9§:Number;
      
      private var §@k§:Number;
      
      private var §?&§:Number;
      
      private var §+Q§:Number = 1.0;
      
      private var §1!,§:Boolean = true;
      
      public function § !§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§;m§ = param4;
         this.§#+§ = param5;
         this.§+9§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§+Q§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §"!$§() : String
      {
         return this.§;m§;
      }
      
      public function get x() : Number
      {
         return this.§#+§;
      }
      
      public function get y() : Number
      {
         return this.§+9§;
      }
      
      public function set §-I§(param1:Boolean) : void
      {
         this.§1!,§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§4!8§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§=3§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §8!=§.§"!2§(this.§"!$§,param3)))
            {
               if(_loc5_ = param3.§=&§(this.§"!$§))
               {
                  (_loc4_ = new §`l§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§'#§) as Sprite)
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
               if(this.name == §'#§)
               {
                  if(!this.§1!,§)
                  {
                  }
               }
               _loc4_.scaleX = this.§+Q§;
               _loc4_.scaleY = this.§+Q§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§@k§ = param1;
         this.§?&§ = param2;
      }
      
      override public function clone() : §8+§
      {
         var _loc1_:§ !§ = new § !§(time,duration,this.mName,this.§;m§,this.§#+§,this.§+9§,this.§+Q§);
         _loc1_.§1!,§ = this.§1!,§;
         _loc1_.§@k§ = this.§@k§;
         _loc1_.§?&§ = this.§?&§;
         return _loc1_;
      }
   }
}
