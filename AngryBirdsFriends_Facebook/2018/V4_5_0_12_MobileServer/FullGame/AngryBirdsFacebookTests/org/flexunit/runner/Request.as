package org.flexunit.runner
{
   import org.flexunit.internals.builders.AllDefaultPossibilitiesBuilder;
   import org.flexunit.internals.namespaces.classInternal;
   import org.flexunit.internals.requests.ClassRequest;
   import org.flexunit.internals.requests.FilterRequest;
   import org.flexunit.internals.requests.QualifyingRequest;
   import org.flexunit.internals.requests.SortingRequest;
   import org.flexunit.runner.manipulation.IFilter;
   import org.flexunit.runner.manipulation.ISort;
   import org.flexunit.runner.manipulation.filters.DynamicFilter;
   import org.flexunit.runner.manipulation.filters.MethodNameFilter;
   import org.flexunit.runners.Suite;
   
   use namespace classInternal;
   
   public class Request implements IRequest
   {
       
      
      private var _sort:ISort;
      
      classInternal var _runner:IRunner;
      
      public function Request()
      {
         super();
      }
      
      public static function aClass(clazz:Class) : Request
      {
         return new ClassRequest(clazz);
      }
      
      public static function qualifyClasses(... argumentsArray) : Request
      {
         return QualifyingRequest.classes.apply(null,argumentsArray);
      }
      
      public static function classes(... argumentsArray) : Request
      {
         return runner(new Suite(new AllDefaultPossibilitiesBuilder(true),argumentsArray));
      }
      
      public static function runner(runner:IRunner) : Request
      {
         var request:Request = new Request();
         request._runner = runner;
         return request;
      }
      
      public static function method(clazz:Class, methodName:String) : Request
      {
         var method:IDescription = Description.createTestDescription(clazz,methodName);
         return Request.aClass(clazz).filterWith(method);
      }
      
      public static function methods(clazz:Class, methodNames:Array) : Request
      {
         return Request.aClass(clazz).filterWith(new MethodNameFilter(methodNames));
      }
      
      public function get sort() : ISort
      {
         return this._sort;
      }
      
      public function set sort(value:ISort) : void
      {
         this._sort = value;
         trace("To be implemented");
      }
      
      public function get iRunner() : IRunner
      {
         return this._runner;
      }
      
      public function getRunner() : IRunner
      {
         return this.iRunner;
      }
      
      protected function filterWithFilter(filter:IFilter) : Request
      {
         return new FilterRequest(this,filter);
      }
      
      protected function filterWithDescription(desiredDescription:IDescription) : Request
      {
         var filter:DynamicFilter = new DynamicFilter(function(description:IDescription):Boolean
         {
            var item:* = undefined;
            if(description.isTest)
            {
               return desiredDescription.equals(description);
            }
            for(var i:* = 0; i < description.children.length; i++)
            {
               item = description.children[i] as IDescription;
               if(this.shouldRun(item))
               {
                  return true;
               }
            }
            return false;
         },function():String
         {
            return "Method " + desiredDescription.displayName;
         });
         return this.filterWithFilter(filter);
      }
      
      public function filterWith(filterOrDescription:*) : Request
      {
         if(filterOrDescription is IDescription)
         {
            return this.filterWithDescription(filterOrDescription as IDescription);
         }
         if(filterOrDescription is IFilter)
         {
            return this.filterWithFilter(filterOrDescription as IFilter);
         }
         return this;
      }
      
      public function sortWith(sorterOrComparatorFunction:*) : Request
      {
         return new SortingRequest(this,sorterOrComparatorFunction);
      }
   }
}
