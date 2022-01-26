package §]!5§
{
   import §]!&§.§#?§;
   
   public class §`!J§
   {
      
      public static const §@h§:int = 0;
      
      public static const §;9§:int = 1;
      
      public static const §5b§:int = 2;
       
      
      public var § case§:Array;
      
      public var §-!@§:int;
      
      public var §>!X§:int;
      
      public var mName:String;
      
      public var §]1§:String;
      
      public function §`!J§(param1:int, param2:String)
      {
         super();
         this.§>!X§ = param1;
         this.mName = param2;
         this.§ case§ = new Array();
      }
      
      public function §1X§(param1:§#?§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§ case§[this.§ case§.length] = param1;
      }
      
      public function §%!`§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§]1§ = param1;
         if(this.§>!X§ == §@h§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§ case§.length)
            {
               if((this.§ case§[_loc2_] as §#?§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§ case§[_loc2_] as §#?§).setComponentState(§=j§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§ case§[_loc2_] as §#?§).§@!M§ == §=j§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§ case§[_loc2_] as §#?§).setComponentState(§=j§.§@!9§);
               }
               _loc2_++;
            }
         }
         if(this.§>!X§ == §5b§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§ case§.length)
            {
               if((this.§ case§[_loc2_] as §#?§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§ case§[_loc2_] as §#?§).§@!M§ == §=j§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§ case§[_loc2_] as §#?§).setComponentState(§=j§.§@!9§);
                  }
                  else if((this.§ case§[_loc2_] as §#?§).§@!M§ == §=j§.§@!9§)
                  {
                     if(this.§,!Q§().length < this.§-!@§)
                     {
                        (this.§ case§[_loc2_] as §#?§).setComponentState(§=j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§,!Q§().length >= this.§-!@§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§ case§.length)
                  {
                     if((this.§ case§[_loc3_] as §#?§).§@!M§ == §=j§.§@!9§)
                     {
                        (this.§ case§[_loc3_] as §#?§).setComponentState(§=j§.§in §);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§ case§.length)
                  {
                     if((this.§ case§[_loc3_] as §#?§).§@!M§ == §=j§.§in §)
                     {
                        (this.§ case§[_loc3_] as §#?§).setComponentState(§=j§.§@!9§);
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
         while(_loc2_ < this.§ case§.length)
         {
            (this.§ case§[_loc2_] as §#?§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §]!]§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§ case§.length)
         {
            (this.§ case§[_loc1_] as §#?§).setComponentState(§=j§.§@!9§);
            _loc1_++;
         }
      }
      
      public function §=I§(param1:Number) : void
      {
         this.§-!@§ = param1;
         if(param1 == 1)
         {
            this.§>!X§ = §@h§;
         }
         else
         {
            this.§>!X§ = §5b§;
         }
      }
      
      public function §]Z§(param1:Array) : void
      {
         this.§]!]§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§%!`§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §,!Q§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§ case§.length)
         {
            if((this.§ case§[_loc2_] as §#?§).§@!M§ == §=j§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§ case§[_loc2_] as §#?§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
