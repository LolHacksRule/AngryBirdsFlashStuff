package §in§
{
   import §%S§.§%X§;
   
   public class § !3§
   {
      
      public static const §>!<§:int = 0;
      
      public static const §5W§:int = 1;
      
      public static const §^!!§:int = 2;
       
      
      public var §17§:Array;
      
      public var §0=§:int;
      
      public var §>F§:int;
      
      public var mName:String;
      
      public var §@!0§:String;
      
      public function § !3§(param1:int, param2:String)
      {
         super();
         this.§>F§ = param1;
         this.mName = param2;
         this.§17§ = new Array();
      }
      
      public function §5n§(param1:§%X§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§17§[this.§17§.length] = param1;
      }
      
      public function §!?§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§@!0§ = param1;
         if(this.§>F§ == §>!<§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§17§.length)
            {
               if((this.§17§[_loc2_] as §%X§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§17§[_loc2_] as §%X§).setComponentState(§9c§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§17§[_loc2_] as §%X§).§,V§ == §9c§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§17§[_loc2_] as §%X§).setComponentState(§9c§.§,4§);
               }
               _loc2_++;
            }
         }
         if(this.§>F§ == §^!!§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§17§.length)
            {
               if((this.§17§[_loc2_] as §%X§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§17§[_loc2_] as §%X§).§,V§ == §9c§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§17§[_loc2_] as §%X§).setComponentState(§9c§.§,4§);
                  }
                  else if((this.§17§[_loc2_] as §%X§).§,V§ == §9c§.§,4§)
                  {
                     if(this.§!G§().length < this.§0=§)
                     {
                        (this.§17§[_loc2_] as §%X§).setComponentState(§9c§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§!G§().length >= this.§0=§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§17§.length)
                  {
                     if((this.§17§[_loc3_] as §%X§).§,V§ == §9c§.§,4§)
                     {
                        (this.§17§[_loc3_] as §%X§).setComponentState(§9c§.§@<§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§17§.length)
                  {
                     if((this.§17§[_loc3_] as §%X§).§,V§ == §9c§.§@<§)
                     {
                        (this.§17§[_loc3_] as §%X§).setComponentState(§9c§.§,4§);
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
         while(_loc2_ < this.§17§.length)
         {
            (this.§17§[_loc2_] as §%X§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §8e§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§17§.length)
         {
            (this.§17§[_loc1_] as §%X§).setComponentState(§9c§.§,4§);
            _loc1_++;
         }
      }
      
      public function §]!'§(param1:Number) : void
      {
         this.§0=§ = param1;
         if(param1 == 1)
         {
            this.§>F§ = §>!<§;
         }
         else
         {
            this.§>F§ = §^!!§;
         }
      }
      
      public function §3l§(param1:Array) : void
      {
         this.§8e§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§!?§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §!G§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§17§.length)
         {
            if((this.§17§[_loc2_] as §%X§).§,V§ == §9c§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§17§[_loc2_] as §%X§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
