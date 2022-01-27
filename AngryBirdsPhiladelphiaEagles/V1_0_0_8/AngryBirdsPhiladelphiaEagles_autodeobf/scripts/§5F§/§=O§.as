package §5F§
{
   import §!t§.§5b§;
   
   public class §=O§
   {
      
      public static const §[z§:int = 0;
      
      public static const §!6§:int = 1;
      
      public static const §#U§:int = 2;
       
      
      public var §%!2§:Array;
      
      public var §-m§:int;
      
      public var §<q§:int;
      
      public var mName:String;
      
      public var §6H§:String;
      
      public function §=O§(param1:int, param2:String)
      {
         super();
         this.§<q§ = param1;
         this.mName = param2;
         this.§%!2§ = new Array();
      }
      
      public function §"=§(param1:§5b§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§%!2§[this.§%!2§.length] = param1;
      }
      
      public function §]H§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§6H§ = param1;
         if(this.§<q§ == §[z§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§%!2§.length)
            {
               if((this.§%!2§[_loc2_] as §5b§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§%!2§[_loc2_] as §5b§).setComponentState(§3^§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§%!2§[_loc2_] as §5b§).§>!%§ == §3^§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§%!2§[_loc2_] as §5b§).setComponentState(§3^§.§8s§);
               }
               _loc2_++;
            }
         }
         if(this.§<q§ == §#U§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§%!2§.length)
            {
               if((this.§%!2§[_loc2_] as §5b§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§%!2§[_loc2_] as §5b§).§>!%§ == §3^§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§%!2§[_loc2_] as §5b§).setComponentState(§3^§.§8s§);
                  }
                  else if((this.§%!2§[_loc2_] as §5b§).§>!%§ == §3^§.§8s§)
                  {
                     if(this.§!r§().length < this.§-m§)
                     {
                        (this.§%!2§[_loc2_] as §5b§).setComponentState(§3^§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§!r§().length >= this.§-m§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§%!2§.length)
                  {
                     if((this.§%!2§[_loc3_] as §5b§).§>!%§ == §3^§.§8s§)
                     {
                        (this.§%!2§[_loc3_] as §5b§).setComponentState(§3^§.§4a§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§%!2§.length)
                  {
                     if((this.§%!2§[_loc3_] as §5b§).§>!%§ == §3^§.§4a§)
                     {
                        (this.§%!2§[_loc3_] as §5b§).setComponentState(§3^§.§8s§);
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
         while(_loc2_ < this.§%!2§.length)
         {
            (this.§%!2§[_loc2_] as §5b§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §0!D§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§%!2§.length)
         {
            (this.§%!2§[_loc1_] as §5b§).setComponentState(§3^§.§8s§);
            _loc1_++;
         }
      }
      
      public function §`!7§(param1:Number) : void
      {
         this.§-m§ = param1;
         if(param1 == 1)
         {
            this.§<q§ = §[z§;
         }
         else
         {
            this.§<q§ = §#U§;
         }
      }
      
      public function §]q§(param1:Array) : void
      {
         this.§0!D§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§]H§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §!r§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!2§.length)
         {
            if((this.§%!2§[_loc2_] as §5b§).§>!%§ == §3^§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§%!2§[_loc2_] as §5b§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
