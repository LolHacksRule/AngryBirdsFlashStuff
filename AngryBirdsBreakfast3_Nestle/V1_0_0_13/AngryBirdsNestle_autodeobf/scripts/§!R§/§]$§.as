package §!R§
{
   import §4Y§.§ `§;
   
   public class §]$§
   {
      
      public static const §6!,§:int = 0;
      
      public static const §+"4§:int = 1;
      
      public static const §<"-§:int = 2;
       
      
      public var §@M§:Array;
      
      public var §>p§:int;
      
      public var §=3§:int;
      
      public var mName:String;
      
      public var §?q§:String;
      
      public function §]$§(param1:int, param2:String)
      {
         super();
         this.§=3§ = param1;
         this.mName = param2;
         this.§@M§ = new Array();
      }
      
      public function §]"&§(param1:§ `§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§@M§[this.§@M§.length] = param1;
      }
      
      public function §,s§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§?q§ = param1;
         if(this.§=3§ == §6!,§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§@M§.length)
            {
               if((this.§@M§[_loc2_] as § `§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§@M§[_loc2_] as § `§).setComponentState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§@M§[_loc2_] as § `§).§`+§ == §-!T§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§@M§[_loc2_] as § `§).setComponentState(§-!T§.§,!H§);
               }
               _loc2_++;
            }
         }
         if(this.§=3§ == §<"-§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§@M§.length)
            {
               if((this.§@M§[_loc2_] as § `§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§@M§[_loc2_] as § `§).§`+§ == §-!T§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§@M§[_loc2_] as § `§).setComponentState(§-!T§.§,!H§);
                  }
                  else if((this.§@M§[_loc2_] as § `§).§`+§ == §-!T§.§,!H§)
                  {
                     if(this.§&[§().length < this.§>p§)
                     {
                        (this.§@M§[_loc2_] as § `§).setComponentState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§&[§().length >= this.§>p§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§@M§.length)
                  {
                     if((this.§@M§[_loc3_] as § `§).§`+§ == §-!T§.§,!H§)
                     {
                        (this.§@M§[_loc3_] as § `§).setComponentState(§-!T§.COMPONENT_STATE_DISABLED);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§@M§.length)
                  {
                     if((this.§@M§[_loc3_] as § `§).§`+§ == §-!T§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§@M§[_loc3_] as § `§).setComponentState(§-!T§.§,!H§);
                     }
                     _loc3_++;
                  }
               }
               _loc2_++;
            }
         }
      }
      
      public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§@M§.length)
         {
            (this.§@M§[_loc3_] as § `§).setEnabled(param1,param2);
            _loc3_++;
         }
      }
      
      public function §0!K§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§@M§.length)
         {
            (this.§@M§[_loc1_] as § `§).setComponentState(§-!T§.§,!H§);
            _loc1_++;
         }
      }
      
      public function §5!M§(param1:Number) : void
      {
         this.§>p§ = param1;
         if(param1 == 1)
         {
            this.§=3§ = §6!,§;
         }
         else
         {
            this.§=3§ = §<"-§;
         }
      }
      
      public function §?!B§(param1:Array) : void
      {
         this.§0!K§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§,s§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §&[§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§@M§.length)
         {
            if((this.§@M§[_loc2_] as § `§).§`+§ == §-!T§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§@M§[_loc2_] as § `§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
