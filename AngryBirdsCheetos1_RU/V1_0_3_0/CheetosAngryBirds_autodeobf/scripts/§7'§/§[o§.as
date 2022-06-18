package §7'§
{
   import §?>§.§!&§;
   
   public class §[o§
   {
      
      public static const §>o§:int = 0;
      
      public static const §+!J§:int = 1;
      
      public static const §'!b§:int = 2;
       
      
      public var §!!Z§:Array;
      
      public var §^r§:int;
      
      public var §%@§:int;
      
      public var mName:String;
      
      public var §%!+§:String;
      
      public function §[o§(param1:int, param2:String)
      {
         super();
         this.§%@§ = param1;
         this.mName = param2;
         this.§!!Z§ = new Array();
      }
      
      public function §@P§(param1:§!&§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§!!Z§[this.§!!Z§.length] = param1;
      }
      
      public function §@6§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§%!+§ = param1;
         if(this.§%@§ == §>o§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§!!Z§.length)
            {
               if((this.§!!Z§[_loc2_] as §!&§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§!!Z§[_loc2_] as §!&§).setComponentState(§'q§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§!!Z§[_loc2_] as §!&§).§,!P§ == §'q§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§!!Z§[_loc2_] as §!&§).setComponentState(§'q§.§"!^§);
               }
               _loc2_++;
            }
         }
         if(this.§%@§ == §'!b§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§!!Z§.length)
            {
               if((this.§!!Z§[_loc2_] as §!&§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§!!Z§[_loc2_] as §!&§).§,!P§ == §'q§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§!!Z§[_loc2_] as §!&§).setComponentState(§'q§.§"!^§);
                  }
                  else if((this.§!!Z§[_loc2_] as §!&§).§,!P§ == §'q§.§"!^§)
                  {
                     if(this.§@k§().length < this.§^r§)
                     {
                        (this.§!!Z§[_loc2_] as §!&§).setComponentState(§'q§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§@k§().length >= this.§^r§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§!!Z§.length)
                  {
                     if((this.§!!Z§[_loc3_] as §!&§).§,!P§ == §'q§.§"!^§)
                     {
                        (this.§!!Z§[_loc3_] as §!&§).setComponentState(§'q§.§,%§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§!!Z§.length)
                  {
                     if((this.§!!Z§[_loc3_] as §!&§).§,!P§ == §'q§.§,%§)
                     {
                        (this.§!!Z§[_loc3_] as §!&§).setComponentState(§'q§.§"!^§);
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
         while(_loc2_ < this.§!!Z§.length)
         {
            (this.§!!Z§[_loc2_] as §!&§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §!m§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§!!Z§.length)
         {
            (this.§!!Z§[_loc1_] as §!&§).setComponentState(§'q§.§"!^§);
            _loc1_++;
         }
      }
      
      public function §6!-§(param1:Number) : void
      {
         this.§^r§ = param1;
         if(param1 == 1)
         {
            this.§%@§ = §>o§;
         }
         else
         {
            this.§%@§ = §'!b§;
         }
      }
      
      public function §5b§(param1:Array) : void
      {
         this.§!m§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§@6§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §@k§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§!!Z§.length)
         {
            if((this.§!!Z§[_loc2_] as §!&§).§,!P§ == §'q§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§!!Z§[_loc2_] as §!&§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
