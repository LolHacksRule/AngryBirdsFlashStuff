package §`;§
{
   import §"k§.§02§;
   import §"k§.§1s§;
   import §;!Q§.Sprite;
   
   public class §5i§
   {
      
      public static const §>t§:int = 0;
      
      public static const §;?§:int = 1;
      
      public static const §,A§:int = 2;
      
      public static const §-!D§:int = 3;
      
      public static const §@§:int = 4;
      
      public static const §#!`§:int = 5;
       
      
      private var §,!A§:Vector.<§?9§>;
      
      private var §9J§:§1s§;
      
      private var §^L§:§02§;
      
      public function §5i§(param1:§1s§, param2:§02§)
      {
         super();
         this.§9J§ = param1;
         this.§^L§ = param2;
         this.§,!A§ = new Vector.<§?9§>();
         var _loc3_:int = 0;
         while(_loc3_ < §#!`§)
         {
            this.§,!A§[_loc3_] = new §?9§();
            _loc3_++;
         }
      }
      
      public function get §+!a§() : §1s§
      {
         return this.§9J§;
      }
      
      public function get §>?§() : §02§
      {
         return this.§^L§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§?9§ = null;
         if(this.§,!A§)
         {
            while(this.§,!A§.length)
            {
               _loc1_ = this.§,!A§.pop();
               _loc1_.dispose();
            }
         }
         this.§,!A§ = null;
      }
      
      public function §0z§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§,@§ = new §,@§(this.§9J§,this.§^L§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§?9§;
         if(_loc18_ = this.§^q§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §[E§
      {
         var _loc16_:§[E§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§?9§;
         if(_loc17_ = this.§^q§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §[E§
      {
         return new §[E§(this.§9J§,this.§^L§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§,!A§.length)
         {
            this.§^q§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §<!9§(param1:int) : void
      {
         var _loc2_:§?9§ = this.§^q§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §1!5§(param1:int) : Sprite
      {
         return this.§^q§(param1).sprite;
      }
      
      public function §^q§(param1:Number) : §?9§
      {
         if(this.§,!A§ != null)
         {
            return this.§,!A§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§<!9§(§>t§);
         var _loc1_:§?9§ = this.§^q§(§;?§);
         var _loc2_:§?9§ = this.§^q§(§>t§);
         _loc1_.§^!2§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §<0§(param1:Number, param2:Number) : void
      {
         var _loc3_:§?9§ = null;
         for each(_loc3_ in this.§,!A§)
         {
            _loc3_.§0! §(param1,param2);
         }
      }
   }
}
