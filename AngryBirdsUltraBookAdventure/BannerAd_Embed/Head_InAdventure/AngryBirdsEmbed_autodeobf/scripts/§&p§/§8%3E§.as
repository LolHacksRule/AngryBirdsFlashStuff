package §&p§
{
   import §&o§.DisplayObject;
   import §&o§.Sprite;
   import §9K§.§5!H§;
   
   public class §8>§ extends §,K§
   {
      
      public static const §9!#§:Number = 1024;
      
      public static const §0i§:Number = 658;
      
      public static const §=R§:Number = 55;
      
      public static const §@[§:String = "cubic_in_out";
      
      public static const §@!3§:String = "sin_in_out";
      
      public static const §<Q§:String = "none";
       
      
      private var §3-§:String;
      
      private var §-`§:Number;
      
      private var §4J§:Number;
      
      private var §[s§:Number;
      
      private var §8!&§:Number;
      
      private var §]H§:Boolean = true;
      
      private var §<"§:String = "cubic_in_out";
      
      public function §8>§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§3-§ = param3;
         this.§-`§ = param4;
         this.§4J§ = param5;
         this.§<"§ = param6;
      }
      
      public function set §5?§(param1:Boolean) : void
      {
         this.§]H§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5!H§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§3-§))
            {
               if(_loc4_.name == §=?§.§!!-§)
               {
                  if(this.§]H§)
                  {
                     _loc4_.x = -this.§?!C§() * this.§4H§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§?!C§() * this.§4H§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§-`§;
                  _loc4_.y -= this.§4J§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §4H§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§<"§)
         {
            case §@[§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §@!3§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §?!C§() : Number
      {
         if(this.§]H§)
         {
            return this.§[s§ - §9!#§;
         }
         return this.§8!&§ - §0i§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§[s§ = param1;
         this.§8!&§ = param2;
      }
      
      override public function clone() : §,K§
      {
         var _loc1_:§8>§ = new §8>§(time,duration,this.§3-§,this.§-`§,this.§4J§,this.§<"§);
         _loc1_.§[s§ = this.§[s§;
         _loc1_.§8!&§ = this.§8!&§;
         _loc1_.§]H§ = this.§]H§;
         return _loc1_;
      }
   }
}
