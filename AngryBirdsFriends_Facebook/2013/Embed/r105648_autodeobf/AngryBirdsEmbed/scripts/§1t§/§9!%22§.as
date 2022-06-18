package §1t§
{
   import §&U§.§^!@§;
   
   public class §9!"§
   {
      
      public static const §7R§:int = 0;
      
      public static const §-l§:int = 1;
      
      public static const §7d§:int = 2;
       
      
      public var §6!N§:Array;
      
      public var §3s§:int;
      
      public var §`_§:int;
      
      public var mName:String;
      
      public var §]!'§:String;
      
      public function §9!"§(param1:int, param2:String)
      {
         super();
         this.§`_§ = param1;
         this.mName = param2;
         this.§6!N§ = new Array();
      }
      
      public function §^9§(param1:§^!@§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§6!N§[this.§6!N§.length] = param1;
      }
      
      public function §;7§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§]!'§ = param1;
         if(this.§`_§ == §7R§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§6!N§.length)
            {
               if((this.§6!N§[_loc2_] as §^!@§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§6!N§[_loc2_] as §^!@§).setComponentState(§-!M§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§6!N§[_loc2_] as §^!@§).§,a§ == §-!M§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§6!N§[_loc2_] as §^!@§).setComponentState(§-!M§.§"!H§);
               }
               _loc2_++;
            }
         }
         if(this.§`_§ == §7d§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§6!N§.length)
            {
               if((this.§6!N§[_loc2_] as §^!@§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§6!N§[_loc2_] as §^!@§).§,a§ == §-!M§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§6!N§[_loc2_] as §^!@§).setComponentState(§-!M§.§"!H§);
                  }
                  else if((this.§6!N§[_loc2_] as §^!@§).§,a§ == §-!M§.§"!H§)
                  {
                     if(this.§5!N§().length < this.§3s§)
                     {
                        (this.§6!N§[_loc2_] as §^!@§).setComponentState(§-!M§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§5!N§().length >= this.§3s§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§6!N§.length)
                  {
                     if((this.§6!N§[_loc3_] as §^!@§).§,a§ == §-!M§.§"!H§)
                     {
                        (this.§6!N§[_loc3_] as §^!@§).setComponentState(§-!M§.§,!-§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§6!N§.length)
                  {
                     if((this.§6!N§[_loc3_] as §^!@§).§,a§ == §-!M§.§,!-§)
                     {
                        (this.§6!N§[_loc3_] as §^!@§).setComponentState(§-!M§.§"!H§);
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
         while(_loc2_ < this.§6!N§.length)
         {
            (this.§6!N§[_loc2_] as §^!@§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §>!,§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§6!N§.length)
         {
            (this.§6!N§[_loc1_] as §^!@§).setComponentState(§-!M§.§"!H§);
            _loc1_++;
         }
      }
      
      public function §&W§(param1:Number) : void
      {
         this.§3s§ = param1;
         if(param1 == 1)
         {
            this.§`_§ = §7R§;
         }
         else
         {
            this.§`_§ = §7d§;
         }
      }
      
      public function §6R§(param1:Array) : void
      {
         this.§>!,§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§;7§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §5!N§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§6!N§.length)
         {
            if((this.§6!N§[_loc2_] as §^!@§).§,a§ == §-!M§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§6!N§[_loc2_] as §^!@§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
