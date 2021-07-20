package §-!F§
{
   import §class§.§?q§;
   
   public class §,J§
   {
      
      public static const §"N§:int = 0;
      
      public static const §?'§:int = 1;
      
      public static const §7Q§:int = 2;
       
      
      public var §9!>§:Array;
      
      public var §%R§:int;
      
      public var §1i§:int;
      
      public var mName:String;
      
      public var §3K§:String;
      
      public function §,J§(param1:int, param2:String)
      {
         super();
         this.§1i§ = param1;
         this.mName = param2;
         this.§9!>§ = new Array();
      }
      
      public function §6i§(param1:§?q§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§9!>§[this.§9!>§.length] = param1;
      }
      
      public function §,4§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§3K§ = param1;
         if(this.§1i§ == §"N§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§9!>§.length)
            {
               if((this.§9!>§[_loc2_] as §?q§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§9!>§[_loc2_] as §?q§).setComponentState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§9!>§[_loc2_] as §?q§).§;e§ == §`!&§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§9!>§[_loc2_] as §?q§).setComponentState(§`!&§.§3?§);
               }
               _loc2_++;
            }
         }
         if(this.§1i§ == §7Q§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§9!>§.length)
            {
               if((this.§9!>§[_loc2_] as §?q§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§9!>§[_loc2_] as §?q§).§;e§ == §`!&§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§9!>§[_loc2_] as §?q§).setComponentState(§`!&§.§3?§);
                  }
                  else if((this.§9!>§[_loc2_] as §?q§).§;e§ == §`!&§.§3?§)
                  {
                     if(this.§8j§().length < this.§%R§)
                     {
                        (this.§9!>§[_loc2_] as §?q§).setComponentState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§8j§().length >= this.§%R§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§9!>§.length)
                  {
                     if((this.§9!>§[_loc3_] as §?q§).§;e§ == §`!&§.§3?§)
                     {
                        (this.§9!>§[_loc3_] as §?q§).setComponentState(§`!&§.§9I§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§9!>§.length)
                  {
                     if((this.§9!>§[_loc3_] as §?q§).§;e§ == §`!&§.§9I§)
                     {
                        (this.§9!>§[_loc3_] as §?q§).setComponentState(§`!&§.§3?§);
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
         while(_loc2_ < this.§9!>§.length)
         {
            (this.§9!>§[_loc2_] as §?q§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §2!D§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§9!>§.length)
         {
            (this.§9!>§[_loc1_] as §?q§).setComponentState(§`!&§.§3?§);
            _loc1_++;
         }
      }
      
      public function §0!1§(param1:Number) : void
      {
         this.§%R§ = param1;
         if(param1 == 1)
         {
            this.§1i§ = §"N§;
         }
         else
         {
            this.§1i§ = §7Q§;
         }
      }
      
      public function §8R§(param1:Array) : void
      {
         this.§2!D§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§,4§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §8j§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§9!>§.length)
         {
            if((this.§9!>§[_loc2_] as §?q§).§;e§ == §`!&§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§9!>§[_loc2_] as §?q§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
