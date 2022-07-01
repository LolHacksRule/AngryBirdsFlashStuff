package §&<§
{
   import §[!F§.§^!g§;
   
   public class §"o§
   {
      
      public static const §@c§:int = 0;
      
      public static const §?@§:int = 1;
      
      public static const §=!,§:int = 2;
       
      
      public var §5!c§:Array;
      
      public var §5!U§:int;
      
      public var §]" §:int;
      
      public var mName:String;
      
      public var §[N§:String;
      
      public function §"o§(param1:int, param2:String)
      {
         super();
         this.§]" § = param1;
         this.mName = param2;
         this.§5!c§ = new Array();
      }
      
      public function §9^§(param1:§^!g§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§5!c§[this.§5!c§.length] = param1;
      }
      
      public function §#!d§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§[N§ = param1;
         if(this.§]" § == §@c§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§5!c§.length)
            {
               if((this.§5!c§[_loc2_] as §^!g§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§5!c§[_loc2_] as §^!g§).setComponentState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§5!c§[_loc2_] as §^!g§).§-`§ == §@j§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§5!c§[_loc2_] as §^!g§).setComponentState(§@j§.§]P§);
               }
               _loc2_++;
            }
         }
         if(this.§]" § == §=!,§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§5!c§.length)
            {
               if((this.§5!c§[_loc2_] as §^!g§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§5!c§[_loc2_] as §^!g§).§-`§ == §@j§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§5!c§[_loc2_] as §^!g§).setComponentState(§@j§.§]P§);
                  }
                  else if((this.§5!c§[_loc2_] as §^!g§).§-`§ == §@j§.§]P§)
                  {
                     if(this.§<!a§().length < this.§5!U§)
                     {
                        (this.§5!c§[_loc2_] as §^!g§).setComponentState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§<!a§().length >= this.§5!U§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§5!c§.length)
                  {
                     if((this.§5!c§[_loc3_] as §^!g§).§-`§ == §@j§.§]P§)
                     {
                        (this.§5!c§[_loc3_] as §^!g§).setComponentState(§@j§.COMPONENT_STATE_DISABLED);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§5!c§.length)
                  {
                     if((this.§5!c§[_loc3_] as §^!g§).§-`§ == §@j§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§5!c§[_loc3_] as §^!g§).setComponentState(§@j§.§]P§);
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
         while(_loc3_ < this.§5!c§.length)
         {
            (this.§5!c§[_loc3_] as §^!g§).setEnabled(param1,param2);
            _loc3_++;
         }
      }
      
      public function §"v§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§5!c§.length)
         {
            (this.§5!c§[_loc1_] as §^!g§).setComponentState(§@j§.§]P§);
            _loc1_++;
         }
      }
      
      public function §0]§(param1:Number) : void
      {
         this.§5!U§ = param1;
         if(param1 == 1)
         {
            this.§]" § = §@c§;
         }
         else
         {
            this.§]" § = §=!,§;
         }
      }
      
      public function §@!p§(param1:Array) : void
      {
         this.§"v§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§#!d§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §<!a§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§5!c§.length)
         {
            if((this.§5!c§[_loc2_] as §^!g§).§-`§ == §@j§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§5!c§[_loc2_] as §^!g§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
