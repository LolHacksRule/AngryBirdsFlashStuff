package §4u§
{
   import §,!_§.§;K§;
   import §,!_§.CompositeSpriteParser;
   import §,!_§.TextureManager;
   import §6!7§.§-m§;
   import §6!7§.DisplayObject;
   import §6!7§.DisplayObjectContainer;
   import §6!7§.Sprite;
   
   public class §8!E§ extends §^!I§
   {
      
      public static const §?!^§:String = "background";
       
      
      private var mName:String;
      
      private var §8!3§:String;
      
      private var §`!%§:Number;
      
      private var §else§:Number;
      
      private var §[v§:Number;
      
      private var §5%§:Number;
      
      private var §2c§:Number = 1.0;
      
      private var §6m§:Boolean = true;
      
      public function §8!E§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§8!3§ = param4;
         this.§`!%§ = param5;
         this.§else§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§2c§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §9!=§() : String
      {
         return this.§8!3§;
      }
      
      public function get x() : Number
      {
         return this.§`!%§;
      }
      
      public function get y() : Number
      {
         return this.§else§;
      }
      
      public function set §;!§(param1:Boolean) : void
      {
         this.§6m§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§;K§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            _loc4_ = CompositeSpriteParser.§-!$§(this.§9!=§,param3);
            if(!_loc4_)
            {
               _loc5_ = param3.§]&§(this.§9!=§);
               if(_loc5_)
               {
                  _loc4_ = new §-m§(_loc5_.texture);
                  _loc4_.pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               _loc6_ = param2.getChildByName(§?!^§) as Sprite;
               if(_loc6_)
               {
                  param2 = _loc6_;
               }
               _loc4_.x += this.x;
               _loc4_.y += this.y;
               _loc4_.name = this.name;
               _loc7_ = param2.getChildByName(this.name);
               if(_loc7_)
               {
                  _loc8_ = _loc7_.parent;
                  _loc8_.removeChild(_loc7_,true);
                  _loc8_.addChild(_loc4_);
               }
               else
               {
                  param2.addChild(_loc4_);
               }
               if(this.name == §?!^§)
               {
                  if(!this.§6m§)
                  {
                  }
               }
               _loc4_.scaleX = this.§2c§;
               _loc4_.scaleY = this.§2c§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§[v§ = param1;
         this.§5%§ = param2;
      }
      
      override public function clone() : §^!I§
      {
         var _loc1_:§8!E§ = new §8!E§(time,duration,this.mName,this.§8!3§,this.§`!%§,this.§else§,this.§2c§);
         _loc1_.§6m§ = this.§6m§;
         _loc1_.§[v§ = this.§[v§;
         _loc1_.§5%§ = this.§5%§;
         return _loc1_;
      }
   }
}
