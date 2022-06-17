package §?§#3
{
   public class §4I§
   {
       
      
      private var mId:String;
      
      private var §5#L§:String;
      
      private var §0!W§:Vector.<String>;
      
      private var § ";§:Vector.<String>;
      
      private var §?!?§:Vector.<String>;
      
      private var §`!t§:Vector.<String>;
      
      private var §>#d§:Vector.<String>;
      
      private var §7#!§:Vector.<String>;
      
      private var §7!x§:Vector.<String>;
      
      private var §0!7§:Vector.<String>;
      
      private var §0V§:Vector.<String>;
      
      private var §1"E§:Vector.<String>;
      
      private var §9!w§:Vector.<String>;
      
      public function §4I§(param1:String, param2:String, param3:XMLList, param4:XMLList, param5:XMLList, param6:XMLList, param7:XMLList, param8:XMLList, param9:XMLList, param10:XMLList, param11:XMLList, param12:XMLList, param13:XMLList)
      {
         var _loc14_:* = null;
         super();
         this.mId = param1;
         this.§5#L§ = param2;
         if(param3)
         {
            this.§0!W§ = new Vector.<String>();
            for(_loc14_ in param3.item)
            {
               this.§0!W§.push(param3.item[_loc14_]);
            }
         }
         if(param4)
         {
            this.§ ";§ = new Vector.<String>();
            for(_loc14_ in param4.item)
            {
               this.§ ";§.push(param4.item[_loc14_]);
            }
         }
         if(param5)
         {
            this.§?!?§ = new Vector.<String>();
            for(_loc14_ in param5.item)
            {
               this.§?!?§.push(param5.item[_loc14_]);
            }
         }
         if(param6)
         {
            this.§`!t§ = new Vector.<String>();
            for(_loc14_ in param6.item)
            {
               this.§`!t§.push(param6.item[_loc14_]);
            }
         }
         if(param7)
         {
            this.§>#d§ = new Vector.<String>();
            for(_loc14_ in param7.item)
            {
               this.§>#d§.push(param7.item[_loc14_]);
            }
         }
         if(param8)
         {
            this.§1"E§ = new Vector.<String>();
            for(_loc14_ in param8.item)
            {
               this.§1"E§.push(param8.item[_loc14_]);
            }
         }
         if(param9)
         {
            this.§7#!§ = new Vector.<String>();
            for(_loc14_ in param9.item)
            {
               this.§7#!§.push(param9.item[_loc14_]);
            }
         }
         if(param10)
         {
            this.§0V§ = new Vector.<String>();
            for(_loc14_ in param10.item)
            {
               this.§0V§.push(param10.item[_loc14_]);
            }
         }
         if(param11)
         {
            this.§7!x§ = new Vector.<String>();
            for(_loc14_ in param11.item)
            {
               this.§7!x§.push(param11.item[_loc14_]);
            }
         }
         if(param12)
         {
            this.§0!7§ = new Vector.<String>();
            for(_loc14_ in param12.item)
            {
               this.§0!7§.push(param12.item[_loc14_]);
            }
         }
         if(param13)
         {
            this.§9!w§ = new Vector.<String>();
            for(_loc14_ in param13.item)
            {
               this.§9!w§.push(param13.item[_loc14_]);
            }
         }
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get channelName() : String
      {
         return this.§5#L§;
      }
      
      public function getCollisionSound() : String
      {
         if(this.§0!W§ && this.§0!W§.length > 0)
         {
            return this.§0!W§[int(this.§0!W§.length * Math.random())];
         }
         return null;
      }
      
      public function getDamagedSound() : String
      {
         if(this.§ ";§ && this.§ ";§.length > 0)
         {
            return this.§ ";§[int(this.§ ";§.length * Math.random())];
         }
         return null;
      }
      
      public function getLaunchSound() : String
      {
         if(this.§?!?§ && this.§?!?§.length > 0)
         {
            return this.§?!?§[int(this.§?!?§.length * Math.random())];
         }
         return null;
      }
      
      public function getSpecialSound() : String
      {
         if(this.§`!t§ && this.§`!t§.length > 0)
         {
            return this.§`!t§[int(this.§`!t§.length * Math.random())];
         }
         return null;
      }
      
      public function §+!z§() : String
      {
         if(this.§>#d§ && this.§>#d§.length > 0)
         {
            return this.§>#d§[int(this.§>#d§.length * Math.random())];
         }
         return null;
      }
      
      public function getIdleSounds() : String
      {
         if(this.§1"E§ && this.§1"E§.length > 0)
         {
            return this.§1"E§[int(this.§1"E§.length * Math.random())];
         }
         return null;
      }
      
      public function getDestroyedSound() : String
      {
         if(this.§7#!§ && this.§7#!§.length > 0)
         {
            return this.§7#!§[int(this.§7#!§.length * Math.random())];
         }
         return null;
      }
      
      public function getRollingSound() : String
      {
         if(this.§7!x§ && this.§7!x§.length > 0)
         {
            return this.§7!x§[int(this.§7!x§.length * Math.random())];
         }
         return null;
      }
      
      public function getSlippingSound() : String
      {
         if(this.§0!7§ && this.§0!7§.length > 0)
         {
            return this.§0!7§[int(this.§0!7§.length * Math.random())];
         }
         return null;
      }
      
      public function getScreamSound() : String
      {
         if(this.§0V§ && this.§0V§.length > 0)
         {
            return this.§0V§[int(this.§0V§.length * Math.random())];
         }
         return null;
      }
      
      public function §6"x§() : String
      {
         if(this.§9!w§ && this.§9!w§.length > 0)
         {
            return this.§9!w§[int(this.§9!w§.length * Math.random())];
         }
         return null;
      }
   }
}
