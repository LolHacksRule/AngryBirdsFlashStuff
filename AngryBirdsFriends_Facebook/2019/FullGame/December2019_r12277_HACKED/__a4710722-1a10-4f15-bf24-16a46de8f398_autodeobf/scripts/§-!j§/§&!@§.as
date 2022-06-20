package §-!j§
{
   public class §&!@§
   {
       
      
      private var mId:String;
      
      private var §1#w§:String;
      
      private var §"$%§:Vector.<String>;
      
      private var §!>§:Vector.<String>;
      
      private var §?W§:Vector.<String>;
      
      private var §7"§:Vector.<String>;
      
      private var §6!M§:Vector.<String>;
      
      private var §&E§:Vector.<String>;
      
      private var §'##§:Vector.<String>;
      
      private var §-"j§:Vector.<String>;
      
      private var §""2§:Vector.<String>;
      
      private var §["s§:Vector.<String>;
      
      private var §0"K§:Vector.<String>;
      
      public function §&!@§(param1:String, param2:String, param3:XMLList, param4:XMLList, param5:XMLList, param6:XMLList, param7:XMLList, param8:XMLList, param9:XMLList, param10:XMLList, param11:XMLList, param12:XMLList, param13:XMLList)
      {
         var _loc14_:* = null;
         super();
         this.mId = param1;
         this.§1#w§ = param2;
         if(param3)
         {
            this.§"$%§ = new Vector.<String>();
            for(_loc14_ in param3.item)
            {
               this.§"$%§.push(param3.item[_loc14_]);
            }
         }
         if(param4)
         {
            this.§!>§ = new Vector.<String>();
            for(_loc14_ in param4.item)
            {
               this.§!>§.push(param4.item[_loc14_]);
            }
         }
         if(param5)
         {
            this.§?W§ = new Vector.<String>();
            for(_loc14_ in param5.item)
            {
               this.§?W§.push(param5.item[_loc14_]);
            }
         }
         if(param6)
         {
            this.§7"§ = new Vector.<String>();
            for(_loc14_ in param6.item)
            {
               this.§7"§.push(param6.item[_loc14_]);
            }
         }
         if(param7)
         {
            this.§6!M§ = new Vector.<String>();
            for(_loc14_ in param7.item)
            {
               this.§6!M§.push(param7.item[_loc14_]);
            }
         }
         if(param8)
         {
            this.§["s§ = new Vector.<String>();
            for(_loc14_ in param8.item)
            {
               this.§["s§.push(param8.item[_loc14_]);
            }
         }
         if(param9)
         {
            this.§&E§ = new Vector.<String>();
            for(_loc14_ in param9.item)
            {
               this.§&E§.push(param9.item[_loc14_]);
            }
         }
         if(param10)
         {
            this.§""2§ = new Vector.<String>();
            for(_loc14_ in param10.item)
            {
               this.§""2§.push(param10.item[_loc14_]);
            }
         }
         if(param11)
         {
            this.§'##§ = new Vector.<String>();
            for(_loc14_ in param11.item)
            {
               this.§'##§.push(param11.item[_loc14_]);
            }
         }
         if(param12)
         {
            this.§-"j§ = new Vector.<String>();
            for(_loc14_ in param12.item)
            {
               this.§-"j§.push(param12.item[_loc14_]);
            }
         }
         if(param13)
         {
            this.§0"K§ = new Vector.<String>();
            for(_loc14_ in param13.item)
            {
               this.§0"K§.push(param13.item[_loc14_]);
            }
         }
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get channelName() : String
      {
         return this.§1#w§;
      }
      
      public function getCollisionSound() : String
      {
         if(this.§"$%§ && this.§"$%§.length > 0)
         {
            return this.§"$%§[int(this.§"$%§.length * Math.random())];
         }
         return null;
      }
      
      public function getDamagedSound() : String
      {
         if(this.§!>§ && this.§!>§.length > 0)
         {
            return this.§!>§[int(this.§!>§.length * Math.random())];
         }
         return null;
      }
      
      public function getLaunchSound() : String
      {
         if(this.§?W§ && this.§?W§.length > 0)
         {
            return this.§?W§[int(this.§?W§.length * Math.random())];
         }
         return null;
      }
      
      public function getSpecialSound() : String
      {
         if(this.§7"§ && this.§7"§.length > 0)
         {
            return this.§7"§[int(this.§7"§.length * Math.random())];
         }
         return null;
      }
      
      public function §[! §() : String
      {
         if(this.§6!M§ && this.§6!M§.length > 0)
         {
            return this.§6!M§[int(this.§6!M§.length * Math.random())];
         }
         return null;
      }
      
      public function getIdleSounds() : String
      {
         if(this.§["s§ && this.§["s§.length > 0)
         {
            return this.§["s§[int(this.§["s§.length * Math.random())];
         }
         return null;
      }
      
      public function getDestroyedSound() : String
      {
         if(this.§&E§ && this.§&E§.length > 0)
         {
            return this.§&E§[int(this.§&E§.length * Math.random())];
         }
         return null;
      }
      
      public function getRollingSound() : String
      {
         if(this.§'##§ && this.§'##§.length > 0)
         {
            return this.§'##§[int(this.§'##§.length * Math.random())];
         }
         return null;
      }
      
      public function getSlippingSound() : String
      {
         if(this.§-"j§ && this.§-"j§.length > 0)
         {
            return this.§-"j§[int(this.§-"j§.length * Math.random())];
         }
         return null;
      }
      
      public function getScreamSound() : String
      {
         if(this.§""2§ && this.§""2§.length > 0)
         {
            return this.§""2§[int(this.§""2§.length * Math.random())];
         }
         return null;
      }
      
      public function §@$E§() : String
      {
         if(this.§0"K§ && this.§0"K§.length > 0)
         {
            return this.§0"K§[int(this.§0"K§.length * Math.random())];
         }
         return null;
      }
   }
}
