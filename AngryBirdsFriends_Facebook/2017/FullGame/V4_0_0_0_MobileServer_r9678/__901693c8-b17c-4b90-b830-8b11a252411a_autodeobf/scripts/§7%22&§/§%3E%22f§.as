package §7"&§
{
   public class §>"f§
   {
       
      
      private var mId:String;
      
      private var §,D§:String;
      
      private var §'#@§:Vector.<String>;
      
      private var § "9§:Vector.<String>;
      
      private var §4!W§:Vector.<String>;
      
      private var §'g§:Vector.<String>;
      
      private var §+E§:Vector.<String>;
      
      private var §6U§:Vector.<String>;
      
      private var §-!<§:Vector.<String>;
      
      private var §7r§:Vector.<String>;
      
      private var §-!o§:Vector.<String>;
      
      private var §`#m§:Vector.<String>;
      
      public function §>"f§(param1:String, param2:String, param3:XMLList, param4:XMLList, param5:XMLList, param6:XMLList, param7:XMLList, param8:XMLList, param9:XMLList, param10:XMLList, param11:XMLList, param12:XMLList)
      {
         var _loc13_:* = null;
         super();
         this.mId = param1;
         this.§,D§ = param2;
         if(param3)
         {
            this.§'#@§ = new Vector.<String>();
            for(_loc13_ in param3.item)
            {
               this.§'#@§.push(param3.item[_loc13_]);
            }
         }
         if(param4)
         {
            this.§ "9§ = new Vector.<String>();
            for(_loc13_ in param4.item)
            {
               this.§ "9§.push(param4.item[_loc13_]);
            }
         }
         if(param5)
         {
            this.§4!W§ = new Vector.<String>();
            for(_loc13_ in param5.item)
            {
               this.§4!W§.push(param5.item[_loc13_]);
            }
         }
         if(param6)
         {
            this.§'g§ = new Vector.<String>();
            for(_loc13_ in param6.item)
            {
               this.§'g§.push(param6.item[_loc13_]);
            }
         }
         if(param7)
         {
            this.§+E§ = new Vector.<String>();
            for(_loc13_ in param7.item)
            {
               this.§+E§.push(param7.item[_loc13_]);
            }
         }
         if(param8)
         {
            this.§`#m§ = new Vector.<String>();
            for(_loc13_ in param8.item)
            {
               this.§`#m§.push(param8.item[_loc13_]);
            }
         }
         if(param9)
         {
            this.§6U§ = new Vector.<String>();
            for(_loc13_ in param9.item)
            {
               this.§6U§.push(param9.item[_loc13_]);
            }
         }
         if(param10)
         {
            this.§-!o§ = new Vector.<String>();
            for(_loc13_ in param10.item)
            {
               this.§-!o§.push(param10.item[_loc13_]);
            }
         }
         if(param11)
         {
            this.§-!<§ = new Vector.<String>();
            for(_loc13_ in param11.item)
            {
               this.§-!<§.push(param11.item[_loc13_]);
            }
         }
         if(param12)
         {
            this.§7r§ = new Vector.<String>();
            for(_loc13_ in param12.item)
            {
               this.§7r§.push(param12.item[_loc13_]);
            }
         }
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get channelName() : String
      {
         return this.§,D§;
      }
      
      public function getCollisionSound() : String
      {
         if(this.§'#@§ && this.§'#@§.length > 0)
         {
            return this.§'#@§[int(this.§'#@§.length * Math.random())];
         }
         return null;
      }
      
      public function getDamagedSound() : String
      {
         if(this.§ "9§ && this.§ "9§.length > 0)
         {
            return this.§ "9§[int(this.§ "9§.length * Math.random())];
         }
         return null;
      }
      
      public function getLaunchSound() : String
      {
         if(this.§4!W§ && this.§4!W§.length > 0)
         {
            return this.§4!W§[int(this.§4!W§.length * Math.random())];
         }
         return null;
      }
      
      public function getSpecialSound() : String
      {
         if(this.§'g§ && this.§'g§.length > 0)
         {
            return this.§'g§[int(this.§'g§.length * Math.random())];
         }
         return null;
      }
      
      public function §`#9§() : String
      {
         if(this.§+E§ && this.§+E§.length > 0)
         {
            return this.§+E§[int(this.§+E§.length * Math.random())];
         }
         return null;
      }
      
      public function getIdleSounds() : String
      {
         if(this.§`#m§ && this.§`#m§.length > 0)
         {
            return this.§`#m§[int(this.§`#m§.length * Math.random())];
         }
         return null;
      }
      
      public function getDestroyedSound() : String
      {
         if(this.§6U§ && this.§6U§.length > 0)
         {
            return this.§6U§[int(this.§6U§.length * Math.random())];
         }
         return null;
      }
      
      public function getRollingSound() : String
      {
         if(this.§-!<§ && this.§-!<§.length > 0)
         {
            return this.§-!<§[int(this.§-!<§.length * Math.random())];
         }
         return null;
      }
      
      public function getSlippingSound() : String
      {
         if(this.§7r§ && this.§7r§.length > 0)
         {
            return this.§7r§[int(this.§7r§.length * Math.random())];
         }
         return null;
      }
      
      public function getScreamSound() : String
      {
         if(this.§-!o§ && this.§-!o§.length > 0)
         {
            return this.§-!o§[int(this.§-!o§.length * Math.random())];
         }
         return null;
      }
   }
}
