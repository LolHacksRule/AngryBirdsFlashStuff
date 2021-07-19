package §>!c§
{
   import §>!$§.§5"u§;
   import flash.net.SharedObject;
   
   public class §@f§ extends §5"u§
   {
       
      
      private var §"!K§:SharedObject;
      
      private var §[!d§:String;
      
      private var §0"K§;
      
      private var §[!O§:Boolean = false;
      
      public function §@f§(param1:SharedObject, param2:String, param3:* = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param3);
            loop0:
            while(true)
            {
               this.§0"K§ = param3;
               do
               {
                  this.§[!d§ = param2;
                  continue loop0;
               }
               while(_loc5_);
               
            }
         }
      }
      
      public function §0!t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.value = this.§0"K§;
         }
      }
      
      override public function get value() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(!this.§[!O§)
            {
               if(_loc1_)
               {
                  this.§&"$§();
               }
            }
         }
         return this.§"!K§.data[this.§[!d§];
      }
      
      override public function set value(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(!this.§[!O§)
            {
               while(true)
               {
                  this.§&"$§();
                  while(true)
                  {
                  }
               }
               addr78:
            }
            do
            {
               super.value = param1;
               do
               {
                  this.§"!K§.data[this.§[!d§] = super.value;
               }
               while(_loc2_);
               
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
            }
            while(!_loc3_);
            
            return;
         }
         §§goto(addr78);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§[!d§ + " : ");
         if(_loc2_)
         {
            return §§pop() + super.toString();
         }
      }
      
      private function §&"$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§[!d§ in this.§"!K§.data)
            {
               loop0:
               while(true)
               {
                  super.value = this.§"!K§.data[this.§[!d§];
                  addr106:
                  while(true)
                  {
                     addr40:
                     while(true)
                     {
                        §>j§();
                        continue loop0;
                     }
                  }
               }
            }
            else
            {
               super.value = this.§0"K§;
            }
            §§goto(addr80);
         }
         §§goto(addr106);
      }
   }
}
