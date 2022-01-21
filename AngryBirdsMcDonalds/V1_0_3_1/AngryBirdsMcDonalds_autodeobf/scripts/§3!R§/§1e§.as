package §3!R§
{
   import §2y§.§@!a§;
   
   public class §1e§
   {
      
      public static const §+!"§:int = 0;
      
      public static const §6n§:int = 1;
      
      public static const §9%§:int = 2;
       
      
      public var §1k§:Array;
      
      public var § b§:int;
      
      public var §,?§:int;
      
      public var mName:String;
      
      public var §7P§:String;
      
      public function §1e§(param1:int, param2:String)
      {
         super();
         this.§,?§ = param1;
         this.mName = param2;
         this.§1k§ = new Array();
      }
      
      public function §<!V§(param1:§@!a§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§1k§[this.§1k§.length] = param1;
      }
      
      public function §&!N§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§7P§ = param1;
         if(this.§,?§ == §+!"§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§1k§.length)
            {
               if((this.§1k§[_loc2_] as §@!a§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§1k§[_loc2_] as §@!a§).setComponentState(§,=§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§1k§[_loc2_] as §@!a§).§&E§ == §,=§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§1k§[_loc2_] as §@!a§).setComponentState(§,=§.§!g§);
               }
               _loc2_++;
            }
         }
         if(this.§,?§ == §9%§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§1k§.length)
            {
               if((this.§1k§[_loc2_] as §@!a§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§1k§[_loc2_] as §@!a§).§&E§ == §,=§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§1k§[_loc2_] as §@!a§).setComponentState(§,=§.§!g§);
                  }
                  else if((this.§1k§[_loc2_] as §@!a§).§&E§ == §,=§.§!g§)
                  {
                     if(this.§!%§().length < this.§ b§)
                     {
                        (this.§1k§[_loc2_] as §@!a§).setComponentState(§,=§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§!%§().length >= this.§ b§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§1k§.length)
                  {
                     if((this.§1k§[_loc3_] as §@!a§).§&E§ == §,=§.§!g§)
                     {
                        (this.§1k§[_loc3_] as §@!a§).setComponentState(§,=§.§%,§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§1k§.length)
                  {
                     if((this.§1k§[_loc3_] as §@!a§).§&E§ == §,=§.§%,§)
                     {
                        (this.§1k§[_loc3_] as §@!a§).setComponentState(§,=§.§!g§);
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
         while(_loc2_ < this.§1k§.length)
         {
            (this.§1k§[_loc2_] as §@!a§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §8P§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§1k§.length)
         {
            (this.§1k§[_loc1_] as §@!a§).setComponentState(§,=§.§!g§);
            _loc1_++;
         }
      }
      
      public function §"w§(param1:Number) : void
      {
         this.§ b§ = param1;
         if(param1 == 1)
         {
            this.§,?§ = §+!"§;
         }
         else
         {
            this.§,?§ = §9%§;
         }
      }
      
      public function §5!§(param1:Array) : void
      {
         this.§8P§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§&!N§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §!%§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§1k§.length)
         {
            if((this.§1k§[_loc2_] as §@!a§).§&E§ == §,=§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§1k§[_loc2_] as §@!a§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
