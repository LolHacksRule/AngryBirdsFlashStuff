package §8#K§
{
   public class §8$-§
   {
       
      
      private var mId:String;
      
      private var §5v§:String;
      
      private var §,#n§:Vector.<String>;
      
      private var §8#]§:Vector.<String>;
      
      private var §]$=§:Vector.<String>;
      
      private var §,"&§:Vector.<String>;
      
      private var §1#§:Vector.<String>;
      
      private var §9#1§:Vector.<String>;
      
      private var §<"p§:Vector.<String>;
      
      private var §!C§:Vector.<String>;
      
      private var §?"w§:Vector.<String>;
      
      private var §<d§:Vector.<String>;
      
      private var §`!z§:Vector.<String>;
      
      public function §8$-§(param1:String, param2:String, param3:XMLList, param4:XMLList, param5:XMLList, param6:XMLList, param7:XMLList, param8:XMLList, param9:XMLList, param10:XMLList, param11:XMLList, param12:XMLList, param13:XMLList)
      {
         var _loc14_:* = null;
         super();
         this.mId = param1;
         this.§5v§ = param2;
         if(param3)
         {
            this.§,#n§ = new Vector.<String>();
            for(_loc14_ in param3.item)
            {
               this.§,#n§.push(param3.item[_loc14_]);
            }
         }
         if(param4)
         {
            this.§8#]§ = new Vector.<String>();
            for(_loc14_ in param4.item)
            {
               this.§8#]§.push(param4.item[_loc14_]);
            }
         }
         if(param5)
         {
            this.§]$=§ = new Vector.<String>();
            for(_loc14_ in param5.item)
            {
               this.§]$=§.push(param5.item[_loc14_]);
            }
         }
         if(param6)
         {
            this.§,"&§ = new Vector.<String>();
            for(_loc14_ in param6.item)
            {
               this.§,"&§.push(param6.item[_loc14_]);
            }
         }
         if(param7)
         {
            this.§1#§ = new Vector.<String>();
            for(_loc14_ in param7.item)
            {
               this.§1#§.push(param7.item[_loc14_]);
            }
         }
         if(param8)
         {
            this.§<d§ = new Vector.<String>();
            for(_loc14_ in param8.item)
            {
               this.§<d§.push(param8.item[_loc14_]);
            }
         }
         if(param9)
         {
            this.§9#1§ = new Vector.<String>();
            for(_loc14_ in param9.item)
            {
               this.§9#1§.push(param9.item[_loc14_]);
            }
         }
         if(param10)
         {
            this.§?"w§ = new Vector.<String>();
            for(_loc14_ in param10.item)
            {
               this.§?"w§.push(param10.item[_loc14_]);
            }
         }
         if(param11)
         {
            this.§<"p§ = new Vector.<String>();
            for(_loc14_ in param11.item)
            {
               this.§<"p§.push(param11.item[_loc14_]);
            }
         }
         if(param12)
         {
            this.§!C§ = new Vector.<String>();
            for(_loc14_ in param12.item)
            {
               this.§!C§.push(param12.item[_loc14_]);
            }
         }
         if(param13)
         {
            this.§`!z§ = new Vector.<String>();
            for(_loc14_ in param13.item)
            {
               this.§`!z§.push(param13.item[_loc14_]);
            }
         }
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get channelName() : String
      {
         return this.§5v§;
      }
      
      public function getCollisionSound() : String
      {
         if(this.§,#n§ && this.§,#n§.length > 0)
         {
            return this.§,#n§[int(this.§,#n§.length * Math.random())];
         }
         return null;
      }
      
      public function getDamagedSound() : String
      {
         if(this.§8#]§ && this.§8#]§.length > 0)
         {
            return this.§8#]§[int(this.§8#]§.length * Math.random())];
         }
         return null;
      }
      
      public function getLaunchSound() : String
      {
         if(this.§]$=§ && this.§]$=§.length > 0)
         {
            return this.§]$=§[int(this.§]$=§.length * Math.random())];
         }
         return null;
      }
      
      public function getSpecialSound() : String
      {
         if(this.§,"&§ && this.§,"&§.length > 0)
         {
            return this.§,"&§[int(this.§,"&§.length * Math.random())];
         }
         return null;
      }
      
      public function §<!Z§() : String
      {
         if(this.§1#§ && this.§1#§.length > 0)
         {
            return this.§1#§[int(this.§1#§.length * Math.random())];
         }
         return null;
      }
      
      public function getIdleSounds() : String
      {
         if(this.§<d§ && this.§<d§.length > 0)
         {
            return this.§<d§[int(this.§<d§.length * Math.random())];
         }
         return null;
      }
      
      public function getDestroyedSound() : String
      {
         if(this.§9#1§ && this.§9#1§.length > 0)
         {
            return this.§9#1§[int(this.§9#1§.length * Math.random())];
         }
         return null;
      }
      
      public function getRollingSound() : String
      {
         if(this.§<"p§ && this.§<"p§.length > 0)
         {
            return this.§<"p§[int(this.§<"p§.length * Math.random())];
         }
         return null;
      }
      
      public function getSlippingSound() : String
      {
         if(this.§!C§ && this.§!C§.length > 0)
         {
            return this.§!C§[int(this.§!C§.length * Math.random())];
         }
         return null;
      }
      
      public function getScreamSound() : String
      {
         if(this.§?"w§ && this.§?"w§.length > 0)
         {
            return this.§?"w§[int(this.§?"w§.length * Math.random())];
         }
         return null;
      }
      
      public function §[!0§() : String
      {
         if(this.§`!z§ && this.§`!z§.length > 0)
         {
            return this.§`!z§[int(this.§`!z§.length * Math.random())];
         }
         return null;
      }
   }
}
