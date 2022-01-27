package §8!h§
{
   import §=Z§.§;g§;
   
   public class §[#'§
   {
      
      public static const §5!N§:int = 0;
      
      public static const §<k§:int = 1;
      
      public static const §1!J§:int = 2;
       
      
      public var §>Q§:Array;
      
      public var §=#6§:int;
      
      public var §=B§:int;
      
      public var mName:String;
      
      public var §%"N§:String;
      
      public function §[#'§(param1:int, param2:String)
      {
         super();
         this.§=B§ = param1;
         this.mName = param2;
         this.§>Q§ = new Array();
      }
      
      public function addButton(param1:§;g§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§>Q§[this.§>Q§.length] = param1;
      }
      
      public function §>>§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§%"N§ = param1;
         if(this.§=B§ == §5!N§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§>Q§.length)
            {
               if((this.§>Q§[_loc2_] as §;g§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§>Q§[_loc2_] as §;g§).setComponentState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§>Q§[_loc2_] as §;g§).§9"6§ == §%"z§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§>Q§[_loc2_] as §;g§).setComponentState(§%"z§.§30§);
               }
               _loc2_++;
            }
         }
         if(this.§=B§ == §1!J§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§>Q§.length)
            {
               if((this.§>Q§[_loc2_] as §;g§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§>Q§[_loc2_] as §;g§).§9"6§ == §%"z§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§>Q§[_loc2_] as §;g§).setComponentState(§%"z§.§30§);
                  }
                  else if((this.§>Q§[_loc2_] as §;g§).§9"6§ == §%"z§.§30§)
                  {
                     if(this.§,!2§().length < this.§=#6§)
                     {
                        (this.§>Q§[_loc2_] as §;g§).setComponentState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§,!2§().length >= this.§=#6§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§>Q§.length)
                  {
                     if((this.§>Q§[_loc3_] as §;g§).§9"6§ == §%"z§.§30§)
                     {
                        (this.§>Q§[_loc3_] as §;g§).setComponentState(§%"z§.COMPONENT_STATE_DISABLED);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§>Q§.length)
                  {
                     if((this.§>Q§[_loc3_] as §;g§).§9"6§ == §%"z§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§>Q§[_loc3_] as §;g§).setComponentState(§%"z§.§30§);
                     }
                     _loc3_++;
                  }
               }
               _loc2_++;
            }
         }
      }
      
      public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§>Q§.length)
         {
            (this.§>Q§[_loc3_] as §;g§).setEnabled(param1,param2);
            _loc3_++;
         }
      }
      
      public function §>";§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§>Q§.length)
         {
            (this.§>Q§[_loc1_] as §;g§).setComponentState(§%"z§.§30§);
            _loc1_++;
         }
      }
      
      public function §3!C§(param1:Number) : void
      {
         this.§=#6§ = param1;
         if(param1 == 1)
         {
            this.§=B§ = §5!N§;
         }
         else
         {
            this.§=B§ = §1!J§;
         }
      }
      
      public function § n§(param1:Array) : void
      {
         this.§>";§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§>>§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §,!2§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§>Q§.length)
         {
            if((this.§>Q§[_loc2_] as §;g§).§9"6§ == §%"z§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§>Q§[_loc2_] as §;g§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
