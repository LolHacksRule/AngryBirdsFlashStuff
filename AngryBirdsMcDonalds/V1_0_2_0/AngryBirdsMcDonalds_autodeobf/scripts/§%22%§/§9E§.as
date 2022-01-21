package §"%§
{
   import §>G§.§0Q§;
   
   public class §9E§
   {
      
      public static const §6!9§:int = 0;
      
      public static const §0![§:int = 1;
      
      public static const §]![§:int = 2;
       
      
      public var §83§:Array;
      
      public var §#@§:int;
      
      public var §91§:int;
      
      public var mName:String;
      
      public var §1-§:String;
      
      public function §9E§(param1:int, param2:String)
      {
         super();
         this.§91§ = param1;
         this.mName = param2;
         this.§83§ = new Array();
      }
      
      public function §`j§(param1:§0Q§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§83§[this.§83§.length] = param1;
      }
      
      public function §1!O§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§1-§ = param1;
         if(this.§91§ == §6!9§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§83§.length)
            {
               if((this.§83§[_loc2_] as §0Q§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§83§[_loc2_] as §0Q§).setComponentState(§9j§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§83§[_loc2_] as §0Q§).§=!Z§ == §9j§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§83§[_loc2_] as §0Q§).setComponentState(§9j§.§'&§);
               }
               _loc2_++;
            }
         }
         if(this.§91§ == §]![§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§83§.length)
            {
               if((this.§83§[_loc2_] as §0Q§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§83§[_loc2_] as §0Q§).§=!Z§ == §9j§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§83§[_loc2_] as §0Q§).setComponentState(§9j§.§'&§);
                  }
                  else if((this.§83§[_loc2_] as §0Q§).§=!Z§ == §9j§.§'&§)
                  {
                     if(this.§,!5§().length < this.§#@§)
                     {
                        (this.§83§[_loc2_] as §0Q§).setComponentState(§9j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§,!5§().length >= this.§#@§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§83§.length)
                  {
                     if((this.§83§[_loc3_] as §0Q§).§=!Z§ == §9j§.§'&§)
                     {
                        (this.§83§[_loc3_] as §0Q§).setComponentState(§9j§.§^^§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§83§.length)
                  {
                     if((this.§83§[_loc3_] as §0Q§).§=!Z§ == §9j§.§^^§)
                     {
                        (this.§83§[_loc3_] as §0Q§).setComponentState(§9j§.§'&§);
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
         while(_loc2_ < this.§83§.length)
         {
            (this.§83§[_loc2_] as §0Q§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §2i§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§83§.length)
         {
            (this.§83§[_loc1_] as §0Q§).setComponentState(§9j§.§'&§);
            _loc1_++;
         }
      }
      
      public function §7R§(param1:Number) : void
      {
         this.§#@§ = param1;
         if(param1 == 1)
         {
            this.§91§ = §6!9§;
         }
         else
         {
            this.§91§ = §]![§;
         }
      }
      
      public function §6!#§(param1:Array) : void
      {
         this.§2i§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§1!O§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §,!5§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§83§.length)
         {
            if((this.§83§[_loc2_] as §0Q§).§=!Z§ == §9j§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§83§[_loc2_] as §0Q§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
