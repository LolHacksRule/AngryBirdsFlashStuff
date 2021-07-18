package §_-1Q§
{
   public class §_-ib§ implements §_-G7§
   {
       
      
      private var §_-yH§:Number = 0;
      
      private var §_-tw§:Number;
      
      private var §_-RH§:Function;
      
      private var §_-WO§:Array;
      
      private var §_-gW§:int = 1;
      
      public function §_-ib§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super();
            if(_loc4_)
            {
               this.§_-RH§ = param1;
               if(_loc4_ || param1)
               {
                  this.§_-tw§ = Math.max(param2,0.0001);
                  §§goto(addr41);
               }
            }
            §§goto(addr56);
         }
         addr41:
         if(_loc4_)
         {
            addr56:
            this.§_-WO§ = param3;
         }
      }
      
      public function §_-IE§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§_-yH§);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         this.§_-yH§ = Math.min(this.§_-tw§,this.§_-yH§ + param1);
         §§push(_loc2_);
         if(!_loc4_)
         {
            §§push(this.§_-tw§);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() < §§pop());
               if(!(_loc4_ && param1))
               {
                  if(§§pop())
                  {
                     if(!(_loc4_ && param1))
                     {
                        §§pop();
                        if(!_loc4_)
                        {
                           addr73:
                           if(this.§_-yH§ >= this.§_-tw§)
                           {
                              if(!(_loc4_ && param1))
                              {
                                 this.§_-RH§.apply(null,this.§_-WO§);
                                 if(_loc3_)
                                 {
                                    if(this.§_-gW§ > 1)
                                    {
                                    }
                                    §§goto(addr129);
                                 }
                                 this.§_-gW§ = this.§_-gW§ - 1;
                                 this.§_-yH§ = 0;
                                 if(_loc4_)
                                 {
                                 }
                                 §§goto(addr129);
                              }
                              §§push(this);
                              §§push(_loc2_);
                              if(!_loc4_)
                              {
                                 §§push(param1);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr127:
                                       §§push(§§pop() - this.§_-tw§);
                                    }
                                    §§pop().§_-IE§(§§pop());
                                    §§goto(addr129);
                                 }
                              }
                              §§goto(addr127);
                           }
                        }
                        addr129:
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public function get §_-ZY§() : Boolean
      {
         return this.§_-yH§ >= this.§_-tw§;
      }
      
      public function get §_-UL§() : Number
      {
         return this.§_-tw§;
      }
      
      public function get §_-mm§() : Number
      {
         return this.§_-yH§;
      }
      
      public function get §_-mj§() : int
      {
         return this.§_-gW§;
      }
      
      public function set §_-mj§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-gW§ = param1;
         }
      }
   }
}
