package §+n§
{
   import §3'§.§5I§;
   
   public class §6]§
   {
      
      public static const §26§:int = 0;
      
      public static const §^l§:int = 1;
      
      public static const §;!@§:int = 2;
       
      
      public var §=?§:Array;
      
      public var §5U§:int;
      
      public var §0!5§:int;
      
      public var mName:String;
      
      public var §!2§:String;
      
      public function §6]§(param1:int, param2:String)
      {
         super();
         this.§0!5§ = param1;
         this.mName = param2;
         this.§=?§ = new Array();
      }
      
      public function §%D§(param1:§5I§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§=?§[this.§=?§.length] = param1;
      }
      
      public function §`!>§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§!2§ = param1;
         if(this.§0!5§ == §26§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§=?§.length)
            {
               if((this.§=?§[_loc2_] as §5I§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§=?§[_loc2_] as §5I§).setComponentState(§3P§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§=?§[_loc2_] as §5I§).§&!%§ == §3P§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§=?§[_loc2_] as §5I§).setComponentState(§3P§.§92§);
               }
               _loc2_++;
            }
         }
         if(this.§0!5§ == §;!@§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§=?§.length)
            {
               if((this.§=?§[_loc2_] as §5I§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§=?§[_loc2_] as §5I§).§&!%§ == §3P§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§=?§[_loc2_] as §5I§).setComponentState(§3P§.§92§);
                  }
                  else if((this.§=?§[_loc2_] as §5I§).§&!%§ == §3P§.§92§)
                  {
                     if(this.§`@§().length < this.§5U§)
                     {
                        (this.§=?§[_loc2_] as §5I§).setComponentState(§3P§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§`@§().length >= this.§5U§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§=?§.length)
                  {
                     if((this.§=?§[_loc3_] as §5I§).§&!%§ == §3P§.§92§)
                     {
                        (this.§=?§[_loc3_] as §5I§).setComponentState(§3P§.§;_§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§=?§.length)
                  {
                     if((this.§=?§[_loc3_] as §5I§).§&!%§ == §3P§.§;_§)
                     {
                        (this.§=?§[_loc3_] as §5I§).setComponentState(§3P§.§92§);
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
         while(_loc2_ < this.§=?§.length)
         {
            (this.§=?§[_loc2_] as §5I§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §,j§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§=?§.length)
         {
            (this.§=?§[_loc1_] as §5I§).setComponentState(§3P§.§92§);
            _loc1_++;
         }
      }
      
      public function § i§(param1:Number) : void
      {
         this.§5U§ = param1;
         if(param1 == 1)
         {
            this.§0!5§ = §26§;
         }
         else
         {
            this.§0!5§ = §;!@§;
         }
      }
      
      public function §7v§(param1:Array) : void
      {
         this.§,j§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§`!>§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §`@§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§=?§.length)
         {
            if((this.§=?§[_loc2_] as §5I§).§&!%§ == §3P§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§=?§[_loc2_] as §5I§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
