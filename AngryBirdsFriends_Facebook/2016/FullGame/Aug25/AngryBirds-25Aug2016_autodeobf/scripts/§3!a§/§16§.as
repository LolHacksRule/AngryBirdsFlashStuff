package §3!a§
{
   import §9$§.DisplayObject;
   import §9$§.Sprite;
   import §@"§.§&!=§;
   
   public class §16§ extends §`#K§
   {
      
      public static const § "+§:Number = 1024;
      
      public static const §&#-§:Number = 658;
      
      public static const § #B§:Number = 55;
      
      public static const §'#!§:String = "cubic_in_out";
      
      public static const §&"0§:String = "sin_in_out";
      
      public static const §;j§:String = "none";
       
      
      private var §&"U§:String;
      
      private var §+!5§:Number;
      
      private var §'! §:Number;
      
      private var §]<§:Number;
      
      private var §""b§:Number;
      
      private var §1"`§:Boolean = true;
      
      private var §+#w§:String = "cubic_in_out";
      
      public function §16§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§&"U§ = param3;
         this.§+!5§ = param4;
         this.§'! § = param5;
         this.§+#w§ = param6;
      }
      
      public function set §-"P§(param1:Boolean) : void
      {
         this.§1"`§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§&!=§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§&"U§))
            {
               if(_loc4_.name == §;"9§.§4#i§)
               {
                  if(this.§1"`§)
                  {
                     _loc4_.x = -this.§2!q§() * this.§]z§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§2!q§() * this.§]z§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§+!5§;
                  _loc4_.y -= this.§'! §;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §]z§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§+#w§)
         {
            case §'#!§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §&"0§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §2!q§() : Number
      {
         if(this.§1"`§)
         {
            return this.§]<§ - § "+§;
         }
         return this.§""b§ - §&#-§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§]<§ = param1;
         this.§""b§ = param2;
      }
      
      override public function clone() : §`#K§
      {
         var _loc1_:§16§ = new §16§(time,duration,this.§&"U§,this.§+!5§,this.§'! §,this.§+#w§);
         _loc1_.§]<§ = this.§]<§;
         _loc1_.§""b§ = this.§""b§;
         _loc1_.§1"`§ = this.§1"`§;
         return _loc1_;
      }
   }
}
