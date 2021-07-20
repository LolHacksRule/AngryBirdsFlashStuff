package §=I§
{
   import §=`§.§#`§;
   import §=`§.§4s§;
   import §=`§.§6!I§;
   import §`g§.§"<§;
   import §`g§.DisplayObject;
   import §`g§.DisplayObjectContainer;
   import §`g§.Sprite;
   
   public class §1$§ extends §?!t§
   {
      
      public static const §3t§:String = "background";
       
      
      private var mName:String;
      
      private var §]X§:String;
      
      private var §#!!§:Number;
      
      private var §!!3§:Number;
      
      private var §3!8§:Number;
      
      private var §0!Q§:Number;
      
      private var §2!#§:Number = 1.0;
      
      private var §#!L§:Boolean = true;
      
      public function §1$§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§]X§ = param4;
         this.§#!!§ = param5;
         this.§!!3§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§2!#§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §>c§() : String
      {
         return this.§]X§;
      }
      
      public function get x() : Number
      {
         return this.§#!!§;
      }
      
      public function get y() : Number
      {
         return this.§!!3§;
      }
      
      public function set §-!m§(param1:Boolean) : void
      {
         this.§#!L§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6!I§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§#`§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §4s§.§<Y§(this.§>c§,param3)))
            {
               if(_loc5_ = param3.§&u§(this.§>c§))
               {
                  (_loc4_ = new §"<§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§3t§) as Sprite)
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
               if(this.name == §3t§)
               {
                  if(!this.§#!L§)
                  {
                  }
               }
               _loc4_.scaleX = this.§2!#§;
               _loc4_.scaleY = this.§2!#§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§3!8§ = param1;
         this.§0!Q§ = param2;
      }
      
      override public function clone() : §?!t§
      {
         var _loc1_:§1$§ = new §1$§(time,duration,this.mName,this.§]X§,this.§#!!§,this.§!!3§,this.§2!#§);
         _loc1_.§#!L§ = this.§#!L§;
         _loc1_.§3!8§ = this.§3!8§;
         _loc1_.§0!Q§ = this.§0!Q§;
         return _loc1_;
      }
   }
}
