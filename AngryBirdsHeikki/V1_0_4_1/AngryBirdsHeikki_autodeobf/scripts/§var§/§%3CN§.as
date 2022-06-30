package §var§
{
   import §#!&§.§#O§;
   
   public class §<N§
   {
      
      public static const §;F§:int = 0;
      
      public static const §^!P§:int = 1;
      
      public static const §9!4§:int = 2;
       
      
      public var §@!C§:Array;
      
      public var §>=§:int;
      
      public var §<]§:int;
      
      public var mName:String;
      
      public var §7m§:String;
      
      public function §<N§(param1:int, param2:String)
      {
         super();
         this.§<]§ = param1;
         this.mName = param2;
         this.§@!C§ = new Array();
      }
      
      public function §^-§(param1:§#O§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§@!C§[this.§@!C§.length] = param1;
      }
      
      public function §!7§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§7m§ = param1;
         if(this.§<]§ == §;F§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§@!C§.length)
            {
               if((this.§@!C§[_loc2_] as §#O§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§@!C§[_loc2_] as §#O§).setComponentState(§8!_§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§@!C§[_loc2_] as §#O§).§;2§ == §8!_§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§@!C§[_loc2_] as §#O§).setComponentState(§8!_§.§^#§);
               }
               _loc2_++;
            }
         }
         if(this.§<]§ == §9!4§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§@!C§.length)
            {
               if((this.§@!C§[_loc2_] as §#O§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§@!C§[_loc2_] as §#O§).§;2§ == §8!_§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§@!C§[_loc2_] as §#O§).setComponentState(§8!_§.§^#§);
                  }
                  else if((this.§@!C§[_loc2_] as §#O§).§;2§ == §8!_§.§^#§)
                  {
                     if(this.§39§().length < this.§>=§)
                     {
                        (this.§@!C§[_loc2_] as §#O§).setComponentState(§8!_§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§39§().length >= this.§>=§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§@!C§.length)
                  {
                     if((this.§@!C§[_loc3_] as §#O§).§;2§ == §8!_§.§^#§)
                     {
                        (this.§@!C§[_loc3_] as §#O§).setComponentState(§8!_§.§4Z§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§@!C§.length)
                  {
                     if((this.§@!C§[_loc3_] as §#O§).§;2§ == §8!_§.§4Z§)
                     {
                        (this.§@!C§[_loc3_] as §#O§).setComponentState(§8!_§.§^#§);
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
         while(_loc2_ < this.§@!C§.length)
         {
            (this.§@!C§[_loc2_] as §#O§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §[!#§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§@!C§.length)
         {
            (this.§@!C§[_loc1_] as §#O§).setComponentState(§8!_§.§^#§);
            _loc1_++;
         }
      }
      
      public function §[a§(param1:Number) : void
      {
         this.§>=§ = param1;
         if(param1 == 1)
         {
            this.§<]§ = §;F§;
         }
         else
         {
            this.§<]§ = §9!4§;
         }
      }
      
      public function §use §(param1:Array) : void
      {
         this.§[!#§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§!7§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §39§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§@!C§.length)
         {
            if((this.§@!C§[_loc2_] as §#O§).§;2§ == §8!_§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§@!C§[_loc2_] as §#O§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
