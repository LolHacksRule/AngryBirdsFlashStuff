package §1§
{
   import §,j§.§0!@§;
   
   public class §`!Y§
   {
      
      public static const §5A§:int = 0;
      
      public static const §><§:int = 1;
      
      public static const §6!F§:int = 2;
       
      
      public var §^k§:Array;
      
      public var §9!V§:int;
      
      public var §`Z§:int;
      
      public var mName:String;
      
      public var §0!$§:String;
      
      public function §`!Y§(param1:int, param2:String)
      {
         super();
         this.§`Z§ = param1;
         this.mName = param2;
         this.§^k§ = new Array();
      }
      
      public function §]n§(param1:§0!@§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§^k§[this.§^k§.length] = param1;
      }
      
      public function §[N§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§0!$§ = param1;
         if(this.§`Z§ == §5A§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§^k§.length)
            {
               if((this.§^k§[_loc2_] as §0!@§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§^k§[_loc2_] as §0!@§).setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§^k§[_loc2_] as §0!@§).§#F§ == §&!3§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§^k§[_loc2_] as §0!@§).setComponentState(§&!3§.§;2§);
               }
               _loc2_++;
            }
         }
         if(this.§`Z§ == §6!F§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§^k§.length)
            {
               if((this.§^k§[_loc2_] as §0!@§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§^k§[_loc2_] as §0!@§).§#F§ == §&!3§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§^k§[_loc2_] as §0!@§).setComponentState(§&!3§.§;2§);
                  }
                  else if((this.§^k§[_loc2_] as §0!@§).§#F§ == §&!3§.§;2§)
                  {
                     if(this.§2R§().length < this.§9!V§)
                     {
                        (this.§^k§[_loc2_] as §0!@§).setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§2R§().length >= this.§9!V§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§^k§.length)
                  {
                     if((this.§^k§[_loc3_] as §0!@§).§#F§ == §&!3§.§;2§)
                     {
                        (this.§^k§[_loc3_] as §0!@§).setComponentState(§&!3§.§#!$§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§^k§.length)
                  {
                     if((this.§^k§[_loc3_] as §0!@§).§#F§ == §&!3§.§#!$§)
                     {
                        (this.§^k§[_loc3_] as §0!@§).setComponentState(§&!3§.§;2§);
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
         while(_loc2_ < this.§^k§.length)
         {
            (this.§^k§[_loc2_] as §0!@§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §<Z§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§^k§.length)
         {
            (this.§^k§[_loc1_] as §0!@§).setComponentState(§&!3§.§;2§);
            _loc1_++;
         }
      }
      
      public function §'!Q§(param1:Number) : void
      {
         this.§9!V§ = param1;
         if(param1 == 1)
         {
            this.§`Z§ = §5A§;
         }
         else
         {
            this.§`Z§ = §6!F§;
         }
      }
      
      public function § b§(param1:Array) : void
      {
         this.§<Z§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§[N§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §2R§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§^k§.length)
         {
            if((this.§^k§[_loc2_] as §0!@§).§#F§ == §&!3§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§^k§[_loc2_] as §0!@§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
