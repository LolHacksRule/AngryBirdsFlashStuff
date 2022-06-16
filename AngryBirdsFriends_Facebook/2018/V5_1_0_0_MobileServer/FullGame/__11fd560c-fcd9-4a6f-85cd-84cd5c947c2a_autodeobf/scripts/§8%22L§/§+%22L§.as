package §8"L§
{
   public class §+"L§
   {
       
      
      private var mId:String;
      
      private var §7#5§:String;
      
      private var §<$>§:Vector.<String>;
      
      private var §?a§:Vector.<String>;
      
      private var §##X§:Vector.<String>;
      
      private var §`a§:Vector.<String>;
      
      private var §'#$§:Vector.<String>;
      
      private var §!"`§:Vector.<String>;
      
      private var §?$'§:Vector.<String>;
      
      private var §5$;§:Vector.<String>;
      
      private var §1!K§:Vector.<String>;
      
      private var §6#u§:Vector.<String>;
      
      public function §+"L§(param1:String, param2:String, param3:XMLList, param4:XMLList, param5:XMLList, param6:XMLList, param7:XMLList, param8:XMLList, param9:XMLList, param10:XMLList, param11:XMLList, param12:XMLList)
      {
         var _loc13_:* = null;
         super();
         this.mId = param1;
         this.§7#5§ = param2;
         if(param3)
         {
            this.§<$>§ = new Vector.<String>();
            for(_loc13_ in param3.item)
            {
               this.§<$>§.push(param3.item[_loc13_]);
            }
         }
         if(param4)
         {
            this.§?a§ = new Vector.<String>();
            for(_loc13_ in param4.item)
            {
               this.§?a§.push(param4.item[_loc13_]);
            }
         }
         if(param5)
         {
            this.§##X§ = new Vector.<String>();
            for(_loc13_ in param5.item)
            {
               this.§##X§.push(param5.item[_loc13_]);
            }
         }
         if(param6)
         {
            this.§`a§ = new Vector.<String>();
            for(_loc13_ in param6.item)
            {
               this.§`a§.push(param6.item[_loc13_]);
            }
         }
         if(param7)
         {
            this.§'#$§ = new Vector.<String>();
            for(_loc13_ in param7.item)
            {
               this.§'#$§.push(param7.item[_loc13_]);
            }
         }
         if(param8)
         {
            this.§6#u§ = new Vector.<String>();
            for(_loc13_ in param8.item)
            {
               this.§6#u§.push(param8.item[_loc13_]);
            }
         }
         if(param9)
         {
            this.§!"`§ = new Vector.<String>();
            for(_loc13_ in param9.item)
            {
               this.§!"`§.push(param9.item[_loc13_]);
            }
         }
         if(param10)
         {
            this.§1!K§ = new Vector.<String>();
            for(_loc13_ in param10.item)
            {
               this.§1!K§.push(param10.item[_loc13_]);
            }
         }
         if(param11)
         {
            this.§?$'§ = new Vector.<String>();
            for(_loc13_ in param11.item)
            {
               this.§?$'§.push(param11.item[_loc13_]);
            }
         }
         if(param12)
         {
            this.§5$;§ = new Vector.<String>();
            for(_loc13_ in param12.item)
            {
               this.§5$;§.push(param12.item[_loc13_]);
            }
         }
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get channelName() : String
      {
         return this.§7#5§;
      }
      
      public function getCollisionSound() : String
      {
         if(this.§<$>§ && this.§<$>§.length > 0)
         {
            return this.§<$>§[int(this.§<$>§.length * Math.random())];
         }
         return null;
      }
      
      public function getDamagedSound() : String
      {
         if(this.§?a§ && this.§?a§.length > 0)
         {
            return this.§?a§[int(this.§?a§.length * Math.random())];
         }
         return null;
      }
      
      public function getLaunchSound() : String
      {
         if(this.§##X§ && this.§##X§.length > 0)
         {
            return this.§##X§[int(this.§##X§.length * Math.random())];
         }
         return null;
      }
      
      public function getSpecialSound() : String
      {
         if(this.§`a§ && this.§`a§.length > 0)
         {
            return this.§`a§[int(this.§`a§.length * Math.random())];
         }
         return null;
      }
      
      public function §"^§() : String
      {
         if(this.§'#$§ && this.§'#$§.length > 0)
         {
            return this.§'#$§[int(this.§'#$§.length * Math.random())];
         }
         return null;
      }
      
      public function getIdleSounds() : String
      {
         if(this.§6#u§ && this.§6#u§.length > 0)
         {
            return this.§6#u§[int(this.§6#u§.length * Math.random())];
         }
         return null;
      }
      
      public function getDestroyedSound() : String
      {
         if(this.§!"`§ && this.§!"`§.length > 0)
         {
            return this.§!"`§[int(this.§!"`§.length * Math.random())];
         }
         return null;
      }
      
      public function getRollingSound() : String
      {
         if(this.§?$'§ && this.§?$'§.length > 0)
         {
            return this.§?$'§[int(this.§?$'§.length * Math.random())];
         }
         return null;
      }
      
      public function getSlippingSound() : String
      {
         if(this.§5$;§ && this.§5$;§.length > 0)
         {
            return this.§5$;§[int(this.§5$;§.length * Math.random())];
         }
         return null;
      }
      
      public function getScreamSound() : String
      {
         if(this.§1!K§ && this.§1!K§.length > 0)
         {
            return this.§1!K§[int(this.§1!K§.length * Math.random())];
         }
         return null;
      }
   }
}
