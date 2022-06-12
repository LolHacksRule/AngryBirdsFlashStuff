package §?$<§
{
   public class §9!V§
   {
       
      
      private var mId:String;
      
      private var §09§:String;
      
      private var §0#E§:Vector.<String>;
      
      private var §>B§:Vector.<String>;
      
      private var §>!z§:Vector.<String>;
      
      private var §%!]§:Vector.<String>;
      
      private var §-"5§:Vector.<String>;
      
      private var §1!G§:Vector.<String>;
      
      private var §>R§:Vector.<String>;
      
      private var §+S§:Vector.<String>;
      
      private var §4e§:Vector.<String>;
      
      private var §8r§:Vector.<String>;
      
      private var §`[§:Vector.<String>;
      
      public function §9!V§(param1:String, param2:String, param3:XMLList, param4:XMLList, param5:XMLList, param6:XMLList, param7:XMLList, param8:XMLList, param9:XMLList, param10:XMLList, param11:XMLList, param12:XMLList, param13:XMLList)
      {
         var _loc14_:* = null;
         super();
         this.mId = param1;
         this.§09§ = param2;
         if(param3)
         {
            this.§0#E§ = new Vector.<String>();
            for(_loc14_ in param3.item)
            {
               this.§0#E§.push(param3.item[_loc14_]);
            }
         }
         if(param4)
         {
            this.§>B§ = new Vector.<String>();
            for(_loc14_ in param4.item)
            {
               this.§>B§.push(param4.item[_loc14_]);
            }
         }
         if(param5)
         {
            this.§>!z§ = new Vector.<String>();
            for(_loc14_ in param5.item)
            {
               this.§>!z§.push(param5.item[_loc14_]);
            }
         }
         if(param6)
         {
            this.§%!]§ = new Vector.<String>();
            for(_loc14_ in param6.item)
            {
               this.§%!]§.push(param6.item[_loc14_]);
            }
         }
         if(param7)
         {
            this.§-"5§ = new Vector.<String>();
            for(_loc14_ in param7.item)
            {
               this.§-"5§.push(param7.item[_loc14_]);
            }
         }
         if(param8)
         {
            this.§8r§ = new Vector.<String>();
            for(_loc14_ in param8.item)
            {
               this.§8r§.push(param8.item[_loc14_]);
            }
         }
         if(param9)
         {
            this.§1!G§ = new Vector.<String>();
            for(_loc14_ in param9.item)
            {
               this.§1!G§.push(param9.item[_loc14_]);
            }
         }
         if(param10)
         {
            this.§4e§ = new Vector.<String>();
            for(_loc14_ in param10.item)
            {
               this.§4e§.push(param10.item[_loc14_]);
            }
         }
         if(param11)
         {
            this.§>R§ = new Vector.<String>();
            for(_loc14_ in param11.item)
            {
               this.§>R§.push(param11.item[_loc14_]);
            }
         }
         if(param12)
         {
            this.§+S§ = new Vector.<String>();
            for(_loc14_ in param12.item)
            {
               this.§+S§.push(param12.item[_loc14_]);
            }
         }
         if(param13)
         {
            this.§`[§ = new Vector.<String>();
            for(_loc14_ in param13.item)
            {
               this.§`[§.push(param13.item[_loc14_]);
            }
         }
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get channelName() : String
      {
         return this.§09§;
      }
      
      public function getCollisionSound() : String
      {
         if(this.§0#E§ && this.§0#E§.length > 0)
         {
            return this.§0#E§[int(this.§0#E§.length * Math.random())];
         }
         return null;
      }
      
      public function getDamagedSound() : String
      {
         if(this.§>B§ && this.§>B§.length > 0)
         {
            return this.§>B§[int(this.§>B§.length * Math.random())];
         }
         return null;
      }
      
      public function getLaunchSound() : String
      {
         if(this.§>!z§ && this.§>!z§.length > 0)
         {
            return this.§>!z§[int(this.§>!z§.length * Math.random())];
         }
         return null;
      }
      
      public function getSpecialSound() : String
      {
         if(this.§%!]§ && this.§%!]§.length > 0)
         {
            return this.§%!]§[int(this.§%!]§.length * Math.random())];
         }
         return null;
      }
      
      public function §`!y§() : String
      {
         if(this.§-"5§ && this.§-"5§.length > 0)
         {
            return this.§-"5§[int(this.§-"5§.length * Math.random())];
         }
         return null;
      }
      
      public function getIdleSounds() : String
      {
         if(this.§8r§ && this.§8r§.length > 0)
         {
            return this.§8r§[int(this.§8r§.length * Math.random())];
         }
         return null;
      }
      
      public function getDestroyedSound() : String
      {
         if(this.§1!G§ && this.§1!G§.length > 0)
         {
            return this.§1!G§[int(this.§1!G§.length * Math.random())];
         }
         return null;
      }
      
      public function getRollingSound() : String
      {
         if(this.§>R§ && this.§>R§.length > 0)
         {
            return this.§>R§[int(this.§>R§.length * Math.random())];
         }
         return null;
      }
      
      public function getSlippingSound() : String
      {
         if(this.§+S§ && this.§+S§.length > 0)
         {
            return this.§+S§[int(this.§+S§.length * Math.random())];
         }
         return null;
      }
      
      public function getScreamSound() : String
      {
         if(this.§4e§ && this.§4e§.length > 0)
         {
            return this.§4e§[int(this.§4e§.length * Math.random())];
         }
         return null;
      }
      
      public function §'N§() : String
      {
         if(this.§`[§ && this.§`[§.length > 0)
         {
            return this.§`[§[int(this.§`[§.length * Math.random())];
         }
         return null;
      }
   }
}
