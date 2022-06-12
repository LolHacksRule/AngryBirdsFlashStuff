package §<8§
{
   import §0!d§.§8!r§;
   
   public class §>!H§
   {
      
      public static const §0]§:int = 0;
      
      public static const §<!T§:int = 1;
      
      public static const §1!'§:int = 2;
       
      
      public var §^!J§:Array;
      
      public var §7R§:int;
      
      public var §5!d§:int;
      
      public var mName:String;
      
      public var §?_§:String;
      
      public function §>!H§(param1:int, param2:String)
      {
         super();
         this.§5!d§ = param1;
         this.mName = param2;
         this.§^!J§ = new Array();
      }
      
      public function §[" §(param1:§8!r§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§^!J§[this.§^!J§.length] = param1;
      }
      
      public function §"!Q§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§?_§ = param1;
         if(this.§5!d§ == §0]§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§^!J§.length)
            {
               if((this.§^!J§[_loc2_] as §8!r§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§^!J§[_loc2_] as §8!r§).setComponentState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§^!J§[_loc2_] as §8!r§).§@!K§ == §"h§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§^!J§[_loc2_] as §8!r§).setComponentState(§"h§.§"!a§);
               }
               _loc2_++;
            }
         }
         if(this.§5!d§ == §1!'§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§^!J§.length)
            {
               if((this.§^!J§[_loc2_] as §8!r§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§^!J§[_loc2_] as §8!r§).§@!K§ == §"h§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§^!J§[_loc2_] as §8!r§).setComponentState(§"h§.§"!a§);
                  }
                  else if((this.§^!J§[_loc2_] as §8!r§).§@!K§ == §"h§.§"!a§)
                  {
                     if(this.§2!!§().length < this.§7R§)
                     {
                        (this.§^!J§[_loc2_] as §8!r§).setComponentState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§2!!§().length >= this.§7R§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§^!J§.length)
                  {
                     if((this.§^!J§[_loc3_] as §8!r§).§@!K§ == §"h§.§"!a§)
                     {
                        (this.§^!J§[_loc3_] as §8!r§).setComponentState(§"h§.§?L§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§^!J§.length)
                  {
                     if((this.§^!J§[_loc3_] as §8!r§).§@!K§ == §"h§.§?L§)
                     {
                        (this.§^!J§[_loc3_] as §8!r§).setComponentState(§"h§.§"!a§);
                     }
                     _loc3_++;
                  }
               }
               _loc2_++;
            }
         }
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§^!J§.length)
         {
            (this.§^!J§[_loc2_] as §8!r§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §&C§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§^!J§.length)
         {
            (this.§^!J§[_loc1_] as §8!r§).setComponentState(§"h§.§"!a§);
            _loc1_++;
         }
      }
      
      public function §+!h§(param1:Number) : void
      {
         this.§7R§ = param1;
         if(param1 == 1)
         {
            this.§5!d§ = §0]§;
         }
         else
         {
            this.§5!d§ = §1!'§;
         }
      }
      
      public function §1o§(param1:Array) : void
      {
         this.§&C§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§"!Q§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §2!!§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§^!J§.length)
         {
            if((this.§^!J§[_loc2_] as §8!r§).§@!K§ == §"h§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§^!J§[_loc2_] as §8!r§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
