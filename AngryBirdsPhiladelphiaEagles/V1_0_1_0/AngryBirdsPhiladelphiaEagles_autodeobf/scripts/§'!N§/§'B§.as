package §'!N§
{
   import §=8§.dynamic;
   
   public class §'B§
   {
      
      public static const §6z§:int = 0;
      
      public static const §5u§:int = 1;
      
      public static const §]5§:int = 2;
       
      
      public var §@!O§:Array;
      
      public var §>j§:int;
      
      public var §0J§:int;
      
      public var mName:String;
      
      public var §?n§:String;
      
      public function §'B§(param1:int, param2:String)
      {
         super();
         this.§0J§ = param1;
         this.mName = param2;
         this.§@!O§ = new Array();
      }
      
      public function §6!$§(param1:dynamic) : void
      {
         if(!param1)
         {
            return;
         }
         this.§@!O§[this.§@!O§.length] = param1;
      }
      
      public function §8D§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§?n§ = param1;
         if(this.§0J§ == §6z§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§@!O§.length)
            {
               if((this.§@!O§[_loc2_] as dynamic).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§@!O§[_loc2_] as dynamic).setComponentState(§>p§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§@!O§[_loc2_] as dynamic).§0w§ == §>p§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§@!O§[_loc2_] as dynamic).setComponentState(§>p§.§'-§);
               }
               _loc2_++;
            }
         }
         if(this.§0J§ == §]5§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§@!O§.length)
            {
               if((this.§@!O§[_loc2_] as dynamic).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§@!O§[_loc2_] as dynamic).§0w§ == §>p§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§@!O§[_loc2_] as dynamic).setComponentState(§>p§.§'-§);
                  }
                  else if((this.§@!O§[_loc2_] as dynamic).§0w§ == §>p§.§'-§)
                  {
                     if(this.§%!B§().length < this.§>j§)
                     {
                        (this.§@!O§[_loc2_] as dynamic).setComponentState(§>p§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§%!B§().length >= this.§>j§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§@!O§.length)
                  {
                     if((this.§@!O§[_loc3_] as dynamic).§0w§ == §>p§.§'-§)
                     {
                        (this.§@!O§[_loc3_] as dynamic).setComponentState(§>p§.§3!-§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§@!O§.length)
                  {
                     if((this.§@!O§[_loc3_] as dynamic).§0w§ == §>p§.§3!-§)
                     {
                        (this.§@!O§[_loc3_] as dynamic).setComponentState(§>p§.§'-§);
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
         while(_loc2_ < this.§@!O§.length)
         {
            (this.§@!O§[_loc2_] as dynamic).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §;o§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§@!O§.length)
         {
            (this.§@!O§[_loc1_] as dynamic).setComponentState(§>p§.§'-§);
            _loc1_++;
         }
      }
      
      public function §#!A§(param1:Number) : void
      {
         this.§>j§ = param1;
         if(param1 == 1)
         {
            this.§0J§ = §6z§;
         }
         else
         {
            this.§0J§ = §]5§;
         }
      }
      
      public function §<x§(param1:Array) : void
      {
         this.§;o§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§8D§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §%!B§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§@!O§.length)
         {
            if((this.§@!O§[_loc2_] as dynamic).§0w§ == §>p§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§@!O§[_loc2_] as dynamic).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
