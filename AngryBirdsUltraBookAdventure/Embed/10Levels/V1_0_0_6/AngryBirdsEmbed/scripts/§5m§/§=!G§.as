package §5m§
{
   import §>K§.§9X§;
   
   public class §=!G§
   {
       
      
      private var §#!B§:String;
      
      private var §1-§:Vector.<Function>;
      
      private var §&!6§:Boolean;
      
      public function §=!G§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            super();
         }
         this.§#!B§ = param1;
         this.§&!6§ = param3;
         if(param2 != null)
         {
            if(!(_loc5_ && param3))
            {
               §9X§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
               this.addCallback(param2);
            }
         }
      }
      
      public function §[]§() : String
      {
         return this.§#!B§;
      }
      
      public function §[u§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&!6§ = param1;
         }
      }
      
      public function §"M§() : Boolean
      {
         return this.§&!6§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§1-§ == null)
            {
               if(_loc3_ || param1)
               {
                  addr55:
                  this.§1-§ = new Vector.<Function>();
                  if(!(_loc2_ && _loc2_))
                  {
                     addr68:
                     if(this.§1-§.indexOf(param1) == -1)
                     {
                        if(_loc3_)
                        {
                           this.§1-§.push(param1);
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr68);
         }
         §§goto(addr55);
      }
      
      public function §"!!§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§1-§.indexOf(param1) > -1)
            {
               if(!_loc3_)
               {
                  addr41:
                  this.§1-§.splice(this.§1-§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function §]a§() : Vector.<Function>
      {
         return this.§1-§;
      }
   }
}
